Understanding Cyanobacteria community from the ocean sample using Qiime2

Admas Berisso

Bacground:

Cyanobacteria are the most ancient forms of life since their creation dated back to the origion of the universe some 4.5 billion years ago. This group of bacterias are also named as bluegreen algae. They are the first oxygen producers that enable turning a reduced environment in to an oxidized environment. They were in a boarder of transiton from an RNA life in to a DNA life, and they are still there. Hence, their improtance in the eye of evolutionary biology, and to benchmark in comparative evoultion is of great interest. Their existance has made it easier to compare and contrast the major biological developments between lives in a contemporary and ancient landscapes of evolutionary biology. Most often than not, the study of cyanobacterias also related with the stduy of evolutionary chromometers, like 16s rRNA, that is used to trace the taxas where an individual in a species belongs to. Bacteria were there in the bottom of the phylogeny of the tree of life, and they are now ubuquetous; there are genetic event where the symbionts genome is also integrted into the genome of a multicellular organism where the bacteria degenerate most of their genomes and exist as an organelle in Eucaryotic bodies. THis is where the use of the small ribosomal RNAs use emerges to depict the ancesteral relationship in all forms of life. Moreover, Cyanobacterias are of of immense use in comparative genomics and evolutionary biology without whom understanding the complexity of life and its dynamics in a time gradient will be hardly possible.

Methods

A Cyanobacteria sequence data has been obtained Hubbard Gencomic Center of the University of New Hampshire, and  the poly-g tails in the data has been trimmed off using Fastp. The Trimmed poly-g fastq filesa are imported with qza extension file using qiime tools import commands available in the script file (the details attached in this repo under analysis.sh). The forward and reverse primers used during sequencing has been cleared using quimme 'cutadapt'plugin. These are cleared sequences with qza extesnion. The r-package 'dada2' has been used to denoise and fix sequensing errors. The counts of each unique sequence in qiime were harvested from here. Finally taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria species for which sequnce classification and bar plotting has been done. We have also observed their distribution pattern in a PCA plot. 

Findings




