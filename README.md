
Lab notebook for gen 811

new repo for project

cp /tmp/gen711_project_data/fastp.sh ~/fastp_singles.sh
chmod +x ~/fastp.sh
mkdir trimmed_fastqs 
./fastp.sh 150 /tmp/gen711_project_data/cyano/fastqs trimmed_fastqs 

conda activate qiime2-2022.8 


### for Cyano
cp /tmp/gen711_project_data/fastp-single.sh ~/fastp_single.sh
chmod +x ~/fastp-single.sh
./fastp.sh 150 /tmp/gen711_project_data/cyano/fastqs trimmed_fastqs


## Step 2
qiime tools import --type /tmp/gen711_project_data/fastp_single.sh  --input-format CasavaOneEightSingleLanePerSampleDirFmt --input-path trimmed_fastqs --output-path ~/fastp_single.sh/denoised 

qiime tools import --type "SampleData[PairedEndSequencesWithQuality]"  --input-format CasavaOneEightSingleLanePerSampleDirFmt --input-path /home/users/ab1710/trimmed_fastqs --output-path home/users/ab1710/trimmed_fastqs out_put1

## Step 3
qiime cutadapt trim-paired --i-demultiplexed-sequences home/users/ab1710/trimmed_fastqs out_put1  --p-cores 4 --p-front-f GTCGGTAAAACTCGTGCCAGC --p-front-r CATAGTGGGGTATCTAATCCCAGTTTG --p-discard-untrimmed --p-match-adapter-wildcards --verbose  --o-trimmed-sequences home/users/ab1710/trimmed_fastqs out_put2 .qza

qiime demux summarize --i-data home/users/ab1710/trimmed_fastqs out_put1 --o-visualization  home/users/ab1710/trimmed_fastqs out_put2/output3.qzv 

## Step 4
qiime dada2 denoise-paired --i-demultiplexed-seqs qiime_out/${run}_demux_cutadapt.qza   --p-trunc-len-f ${trunclenf} --p-trunc-len-r ${trunclenr}  --p-trim-left-f 0 --p-trim-left-r 0 --p-n-threads 4 --o-denoising-stats home/users/ab1710/trimmed_fastqs/denoising-stats.qza  --o-table home/users/ab1710/trimmed_fastqs/feature_table.qza --o-representative-sequences home/users/ab1710/trimmed_fastqs/rep-seqs.qza

qiime metadata tabulate --m-input-file home/users/ab1710/trimmed_fastqs/denoising-stats.qza --o-visualization home/users/ab1710/trimmed_fastqs/denoising-stats.qzv

qiime feature-table tabulate-seqs --i-data home/users/ab1710/trimmed_fastqs/rep-seqs.qza --o-visualization home/users/ab1710/trimmed_fastqs/rep-seqs.qzv
