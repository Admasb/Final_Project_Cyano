Understanding Cyanobacteria community from the ocean sample using Qiime2

Admas Berisso

Bacground:

Cyanobacteria are the most ancient forms of life since their creation dated back to the origion of the universe some 4.5 billion years ago. This group of bacterias are also named as bluegreen algae that are major contributers in first time oxygen production, and turning a reduced environment in to oxidized environment. It exist in a boarder of transiton from an RNA life in to a DNA life. Cyanobacteria is also an important organism in the eye of evolutionary biology, and it serve as a great benchmark for comparative evolutionary studies. Its existance has made it easier to compare and contrast the major biological developments between lives in a contemporary and ancient landscapes of evolutionary biology. Most often than not, the study of cyanobacterias also related with the stduy of evolutionary chromometers, like 16s rRNA, that is used to trace the taxas where an individual in a species belongs to. This concept has progressed well becasue bacterias were there in the bottom of the phylogeny of the tree of life, and make it all the way to succed even integrating part of the symbionts genome into a multicellular prganisms, where they degenerating their most of their genomes and integrating them seleves as an organelle in Eucaryotes. This can give an idea on why the smaller subunit of ribosomal RNAs are widely used to depict ancesteral relationship in all forms of life. Moreover, Cyanobacterias are of of immense use in comparative genomics and evolutionary biology without whom understanding the complexity of life and its dynamics in a time gradient will be hardly possible.

Methods

A Cyanobacteria sequence data has been obtained Hubbard Gencomic Center of the University of New Hampshire, and  the poly-g tails in the data has been trimmed off using Fastp. The Trimmed poly-g fastq filesa are imported with qza extension file using qiime tools import commands available in the script file (the details attached in this repo under analysis.sh). The forward and reverse primers used during sequencing has been cleare using quimme 'cutadapt'plugin. These are cleared sequences with qza extesnion. The r-package 'dada2' has been used to denoise and fix sequensing errors. The counts of each unique sequence in qiime will be harvested from here. Finally taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria species for which sequnce classification and bar plotting has been done. 

Findings




