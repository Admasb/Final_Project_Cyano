# lab-notebook
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

## Step 3
qiime cutadapt trim-paired --i-demultiplexed-sequences <path to the file from step 2>  --p-cores 4 --p-front-f <the forward primer sequence> --p-front-r <the reverse primer sequence> --p-discard-untrimmed --p-match-adapter-wildcards --verbose  --o-trimmed-sequences <path to an output directory>/<name for the output files>.qza

qiime demux summarize --i-data <path to the file from step above> --o-visualization  <path to an output directory>/<a name for the output files>.qzv 

## Step 4
qiime dada2 denoise-paired --i-demultiplexed-seqs qiime_out/${run}_demux_cutadapt.qza   --p-trunc-len-f ${trunclenf} --p-trunc-len-r ${trunclenr}  --p-trim-left-f 0 --p-trim-left-r 0 --p-n-threads 4 --o-denoising-stats <path to an output directory>/denoising-stats.qza  --o-table <path to an output directory>/feature_table.qza --o-representative-sequences <path to an output directory>/rep-seqs.qza

qiime metadata tabulate --m-input-file <path to an output directory>/denoising-stats.qza --o-visualization <path to an output directory>/denoising-stats.qzv

qiime feature-table tabulate-seqs --i-data <path to an output directory>/rep-seqs.qza --o-visualization <path to an output directory>/rep-seqs.qzv
