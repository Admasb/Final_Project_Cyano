#!/bin/bash
source /opt/anaconda/anaconda/etc/profile.d/conda.sh

conda activate genomics

indir="$( realpath ${2})"
outdir="$( realpath ${3})"


for f in ${indir}/*R1_001.fastq.gz ; do 

    fb=$(basename $f)


   fastp \
    --i $f \
    --html ${outdir}/html/${fb%_R1_001.fastq.gz}.html \
    --out ${outdir}/$fb \
    --cut_tail \
    --cut_tail_mean_quality 25 \
    --cut_tail_window_size 2 \
    --disable_adapter_trimming \
    -l ${1} \
    -g -Q

   echo $f
    
done
