Taxonomic Classification of Cyanobacteria using Qiime2

Admas Berisso

Bacground:

Cyanobacteria is the most ancient bacteria since the origion of life, and its origion as a primitive life form is documented to exist since some 4.5 billion years ago. Cyanobacterias otherwise named bluegreem algae is a major contributer in the creation of axenic environment from a reduced environment. Cyano is an important organism in the eye of evolutionary biology, and there is a notable interest to benchmark Cyano along with evolutionary chromometers to depict the genesis of life and to understand the shift from an rna life to a dna life- that we are having today. Moreover, cyanos are an important organisms in the eye of comparative genomics as well to becnhmark and compare the cellular development and fucntional genes in other procaryotic and complex multicelluar organisms with the change in time from orgion of life to the contemporary world.  

Methods

The poly-g tails in the cyano sequence data has been trimmed using Fastp. Trimmed poly-g fastq filesa are imported with qza extension file using qiime tools import commands available in the script file ( analysis.sh) attached in this repo. The forward and reverse primers used during sequencing has been cleare using quimme 'cutadapt'plugin. These are cleared sequences with qza extesnion. The r-package 'dada2' has been used to denoise and fix sequensing errors. The counts of each unique sequence in qiime will be harvested from here. Finally taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria species for which sequnce classification and bar plotting has been done. 

Findings




