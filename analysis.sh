
conda activate qiime2-2022.8

cd /home/users/ab1710/Project/Final_Project_Cyano/Old-fastp-outputs

mkdir fastp_fq

./fastp.sh 150 /tmp/gen711_project_data/cyano/fastqs fastp_fq

mkdir qiime_out

qiime tools import \
   --type "SampleData[PairedEndSequencesWithQuality]"  \
   --input-format CasavaOneEightSingleLanePerSampleDirFmt \
   --input-path  fastp_fq \
   --output-path qiime_out/cyano.qza


qiime cutadapt trim-paired \
    --i-demultiplexed-sequences qiime_out/cyano.qza  \
    --p-cores 4 \
    --p-front-f GTGYCAGCMGCCGCGGTAA \
    --p-front-r CCGYCAATTYMTTTRAGTTT \
    --p-discard-untrimmed \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences cutadapt_cyano.qza

qiime demux summarize \
--i-data cutadapt_cyano.qza \
--o-visualization demux_cyano.qzv 

qiime dada2 denoise-paired \
    --i-demultiplexed-seqs <output path>/cutadapt-sequences-1.qza  \
    --p-trunc-len-f  <trunclenf> \
    --p-trunc-len-r <trunclenr> \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads 4 \
    --o-denoising-stats <output path>/denoising-stats-1.qza \
    --o-table <output path>/feature_table-1.qza \
    --o-representative-sequences <output path>/rep-seqs-1.qza

qiime metadata tabulate \
    --m-input-file <output path>/denoising-stats.qza \
    --o-visualization <output path>/denoising-stats.qzv

qiime feature-table tabulate-seqs \
        --i-data <output path>/rep-seqs.qza \
        --o-visualization <output path>/rep-seqs.qzv