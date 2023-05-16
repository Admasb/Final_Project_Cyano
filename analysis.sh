
## output files are in ~/qiime-analysis
## scripts are in ~/Final_Project_Cyano
## PCA second step table.qza is replaced by feature_table.qza

conda activate qiime2-2022.8

cd ~/qiime-analysis

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
## Denoising

qiime dada2 denoise-paired \
    --i-demultiplexed-seqs cutadapt_cyano.qza  \
    --p-trunc-len-f  0 \
    --p-trunc-len-r 0 \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads 4 \
    --o-denoising-stats denoising-stats.qza \
    --o-table feature_table.qza \
    --o-representative-sequences rep-seqs.qza

    qiime metadata tabulate \
    --m-input-file denoising-stats.qza \
    --o-visualization denoising-stats.qzv

    qiime feature-table tabulate-seqs \
        --i-data rep-seqs.qza \
        --o-visualization rep-seqs.qzv

  #Taxonomy assignment  
  #classify rep seqs   
 qiime feature-classifier classify-sklearn \
--i-classifier /tmp/gen711_project_data/cyano/classifier_16S_V4-V5.qza \
--i-reads rep-seqs.qza \
--o-classification cyano_taxo

## here is what is needed for all other data 
qiime feature-classifier classify-consensus-vsearch \
--i-query rep-seqs.qza \
--i-reference-reads /tmp/gen711_project_data/reference_databases/silva132_99.qza \
--i-reference-taxonomy /tmp/gen711_project_data/reference_databases/majority_taxonomy_all_levels.qza \
--p-maxaccepts 10 \
--p-query-cov 0.80 \
--p-perc-identity 0.9 \
--p-threads 36 \
--o-classification taxonomy.qza

### Barplot 
qiime taxa barplot \
     --i-table feature_table.qza \
     --m-metadata-file /tmp/gen711_project_data/cyano/metadata.tsv \
     --i-taxonomy taxonomy.qza \
     --o-visualization my-barplot.qzv

Feature table
     qiime feature-table filter-samples \
  --i-table feature_table.qza \
  --m-metadata-file /tmp/gen711_project_data/cyano/metadata.tsv \
  --o-filtered-table new_samples_table.qza

#PCA Plot

qiime phylogeny align-to-tree-mafft-fasttree \
--i-sequences rep-seqs.qza \
--o-alignment algn \
--o-masked-alignment masked-aligned-rep-seqs \ 
--o-tree unrooted-tree \
--o-rooted-tree rooted-tree \
--p-n-threads 8
#
qiime diversity core-metrics-phylogenetic \
--i-phylogeny rooted-tree.qza \
--i-table feature_table.qza \
--p-sampling-depth 1500 \
--m-metadata-file /tmp/gen711_project_data/cyano/metadata.tsv \
--output-dir core-metrics-phylogenetics

##
##
qiime feature-table relative-frequency \
--i-table core-metrics-phylogenetics/rarefied_table.qza \
--o-relative-frequency-table core-metrics-phylogenetics/relative_rarefied_table
#
qiime diversity pcoa-biplot \
--i-features core-metrics-phylogenetics/relative_rarefied_table.qza \
--i-pcoa core-metrics-phylogenetics/unweighted_unifrac_pcoa_results.qza \
--o-biplot core-metrics-phylogenetics/unweighted_unifrac_pcoa_biplot

## error
qiime emperor biplot \
--i-biplot core-metrics-phylogenetics/unweighted_unifrac_pcoa_biplot.qza \
--m-sample-metadata-file /tmp/gen711_project_data/cyano/metadata.tsv \
--o-visualization core-metrics-phylogenetics/unweighted_unifrac_pcoa_biplot

##