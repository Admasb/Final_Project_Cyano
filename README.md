Understanding Cyanobacteria community from fresh water sample using Qiime2

Admas Berisso

Bacground:

Cyanobacteria are the most ancient forms of life since their creation dated back to the origion of the universe some 4.5 billion years ago. This group of bacterias are also named as bluegreen algae. They are the first oxygen producers that enable turning a reduced environment in to an oxidized environment during great oxygenation even (Hamilton et al, 2016). They were in a boarder of transiton from an RNA life in to a DNA life, and they still exist today. Hence, their improtance in the eye of evolutionary biology, and comparative evoultion is of great interest. Their existance has made it easier to compare and contrast the major biological developments between lives in a contemporary and ancient landscapes of evolutionary biology. Most often than not, the study of cyanobacterias also related with the stduy of evolutionary chromometers, like 16s rRNA, that is used to trace the taxas where an individual in a species belongs to. These group of Bacteria were there in the bottom of the phylogenetic tree of life, and they are still around spreading ubuquetously. Ancient bacterias can exist as a free-living; symbiont; and/or  changing thier form being reduced in to an organelle in Eucaryotic bodies. This implicates how the use of small ribosomal RNAs makes a sense in depicting the ancesteral relationship in all forms of life. Accordingly, our study based on the use of 16s rRNA to understand the taxonomic classification. Moreover, Cyanobacterias are of of immense use in comparative genomics and evolutionary biology without whom understanding the complexity of life and bechmarking its dynamics in a time frame would be hardly possible.

Methods

The samples from Lower Mill Pond has been colected in a four moths time frame from june to october 2022. Sequence files in a form of fastq has been obtained from Hubbard Gencomic Center of the University of New Hampshire. The sequence data has undergone  a multi stage data clearing process. Hence, the poly-g tails has been trimmed using Fastp. The  poly-g trimmed fastq files were imported with qza extension file and Qiime tools has been used to import commands. Acccording to Kuczynski et al (2011) QIIME (canonically pronounced 'chime') is a software that performs microbial community analysis. 
The command script used for the analysis is included in in this repository with a file name 'analysis.sh'. The forward and reverse primers used during sequencing have been cleared using qiimme 'cutadapt'plugin. The cleared sequences with qza extesnion are further used for analysis. We have used the r-package 'dada2' to denoise and fix sequensing errors. Finally, the counts of each unique sequence in qiime were harvested, and taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria community.To complete the work sequence classification and bar plotting were done, and the distribution pattern has been observed in a PCA plot.

Result

<img width="869" alt="Screen Shot 2023-05-09 at 12 48 24 PM" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/90b9e88e-1ce9-438c-a528-1c9c6c754164">

<img width="880" alt="2  Cyanobacteria mealinbacteria" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/f75af358-ddc5-41e9-90b0-5c2d9ea451a2">

<img width="877" alt="3  Cyanobacteria Sericytochromatia" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/5d4815a9-4013-4c0b-9a98-b63d652939d3">

<img width="573" alt="Unwt unifrac emperor" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/f96c95fc-99ef-4b90-b9fb-a6150f33fa60">

<img width="544" alt="Jaccard Emperor" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/b210e3f4-283f-4cb9-8c7d-c4ada847fc4b">

Discussion 

The findings listed the microbial composition found in the fresh water. They are classified in three domain names from "0" to "2", when "0" refers to the Domain baceria, the remaining domain labels goes to a genera and a class/phyla classification respectively. In this community three differnt cyanobacteria communities, namely Cyanobacteria mealinbacteria, Cynaobacteria oxyphotobacteria, and Cyanobacteria Sericytochromatia have been idetnified. The phyla mealinbacteria is non-photosyntheic, the class oxyphotobacteria is photosynthetic and the class Sarichromatia is a paraphyletic and the ancestor of the other two types.  The above figures indicates that the microbial structure of the afforementioned three cyanobactera community respectively along with their other associated microbes. 


Refereces

Hamilton TL, Bryant DA, Macalady JL (2016). The role of biology in planetary evolution: cyanobacterail primary production in low oxygen proterozoic oceans. Evolutionary Microbiol. 18:325-340

Kuczynski J, Stombaugh J, Walters WA, Gonzalez A, Caporaso JG, Knight R (2011). Using QIIME to analysze 16S rRNA gene sequences from microbial communities. Curr Protoc Bioinformatics. doi: 10.1002/0471250953.bi1007s36
