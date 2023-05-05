Taxonomic Classification of Cyanobacteria using Qiime2

Admas Berisso

Bacground:
Cyanobacteria is the most ancient bacteria in the world traced back to the origion of life. Cyanobacterias otherwise named bluegreem algae are the one which has contobuted in the creation of axenic environment from reduced environment, and their contribution from an rna life to a dna life is notable. Today Cyanobacterias used as an important milestone to compare the other procaryotic life to the complex eucaryotic life to understand various studies in lifescience.  


Methods
The poly-g tails in the cyano sequence data has been trimmed using Fastp. Trimmed poly-g fastq filesa are imported with qza extension file using qiime tools import commands available in the script file ( analysis.sh) attached in this repo. The forward and reverse primers used during sequencing has been cleare using quimme 'cutadapt'plugin. These are cleared sequences with qza extesnion. The r-package 'dada2' has been used to denoise and fix sequensing errors. The counts of each unique sequence in qiime will be harvested from here. Finally taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria species for which sequnce classification and bar plotting has been done. 

Findings




