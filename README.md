Understanding Cyanobacteria community from freshwater sample using Qiime2

Admas Berisso

Bacground:

Cyanobacteria are the most ancient forms of life; the major primary producers in the past and current ocean, and ancestros of chloroplast (Demoulin et al, 2019). This group of bacterias are also named as bluegreen algae. They are the first oxygen producers that enable turning a reduced environment in to an oxidized environment during great oxygenation event (Hamilton et al, 2016). They were in a boarder of transiton from an RNA life in to a DNA life, and their improtance in the eye of evolutionary biology, and comparative evoultion is of great interest. Their existance has made it easier to compare and contrast the major biological developments between lives in a contemporary and ancient landscapes of evolutionary biology. Most often than not, the study of cyanobacterias also related with the stduy of evolutionary chromometers, like 16s rRNA, that is used to trace the taxas where an individual in a species belongs to. These group of Bacteria were there in the bottom of the phylogenetic tree of life, and they are still around spreading ubuquetously. Ancient bacterias can exist as a free-living; symbiont; and/or  changing thier form being reduced in to an organelle in Eucaryotic bodies. This implicates how the use of small ribosomal RNAs makes a sense in depicting the ancesteral relationship in all forms of life. Accordingly, our study based on the use of 16s rRNA to understand the taxonomic classification. Moreover, Cyanobacterias are of of immense use in comparative genomics and evolutionary biology without whom understanding the complexity of life and bechmarking its dynamics in a time frame would be hardly possible.

Methods

The samples from Lower Mill Pond has been colected in a five months period that extends from June to October 2022. Sequence files in a form of fastq has been obtained from Hubbard Gencomic Center of the University of New Hampshire. The sequence data has undergone  a multi stage data clearing process. Hence, the poly-g tails has been trimmed using Fastp. The trimmed fastq files were imported with qza extension file and Qiime tools has been deployed to import commands. Acccording to Kuczynski et al (2011) QIIME (canonically pronounced 'chime') is a software that performs microbial community analysis. 
The command script used for the analysis is included in in this repository separately with a file name 'analysis.sh'. The forward and reverse primers used during sequencing have been cleared using qiimme 'cutadapt'plugin. The cleared sequences with qza extesnion are further used for analysis.The r-package 'dada2' to has been used to denoise and fix sequensing errors. Finally, the counts of each unique sequence in qiime were harvested, and taxonomy assignment was made to see the taxonomic diversity of the Cyanobacteria community.To complete the work sequence classification and bar plotting were done, and the distribution pattern has been observed in a PCA plot.

Result

The result indicate cyanobacteria exist in a freshwater sample along with other microbes in a comunity. Fig 1. below illustrates  Cyanobaceria oxophotobacteria (in green) is having a clear structure and not much intermixed with other microbes in the community. wheras mealinbacteria in Fig 2 (again in green) is highly perturbated, and Serisytochromaia is Fig 3. represented in yellow is having a diminshed population structure compared to the otehr two.

<img width="869" alt="Screen Shot 2023-05-09 at 12 48 24 PM" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/90b9e88e-1ce9-438c-a528-1c9c6c754164">

Fig 1. Cyanobacteria oxphotobacteria

<img width="880" alt="2  Cyanobacteria mealinbacteria" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/f75af358-ddc5-41e9-90b0-5c2d9ea451a2">

Fig 2. Cyanobacteria mealinbacteria

<img width="877" alt="3  Cyanobacteria Sericytochromatia" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/5d4815a9-4013-4c0b-9a98-b63d652939d3">

Fig 3. Cyano bacteria Sericytochromatia


The PCA plots indicate the similarity and diversity of microbial composition as well as sample compositions. The PCA plot in Fig 4 the unweight unifrac emperror or generally the beta diversity indicates there is a distance indicating the composition differnce with the available microbes and, the Jaccard Emperror dissimilarity index in Fig 5. shows the maximum dissimilarity between samples in the x-axis of the plot. 

<img width="573" alt="Unwt unifrac emperor" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/f96c95fc-99ef-4b90-b9fb-a6150f33fa60">

Fig 4. PCA plot for Unweight Unifrac Emperor 

<img width="544" alt="Jaccard Emperor" src="https://github.com/Admasb/Final_Project_Cyano/assets/126387239/b210e3f4-283f-4cb9-8c7d-c4ada847fc4b">

Fig 5. PCA Plot for Jaccard Emperor

Discussion 

The findings listed the microbial composition found in the fresh water. They are classified in three domain names from "0" to "2", when "0" refers to the Domain baceria, the remaining domain labels goes to a 'genera' and a 'class/phyla' level classification respectively. In this community three differnt cyanobacteria communities, namely Cynaobacteria oxyphotobacteria, Cyanobacteria mealinbacteria, and Cyanobacteria Sericytochromatia have been idetnified. The phyla mealinbacteria is a non-photosyntheic cyanobacteria, the class oxyphotobacteria is photosynthetic and the class Sarichromatia is a paraphyletic ancestor of the other two types. The study doesn't indicate if there is a time specific microbial colonization trend during the specified sampling period.

Acknowledgement

The Author would like to thank his Bioinformatics and Genomics Professor - Dr. Jeff T. Miller for his dedication and unreserved support to bring this project to fruition. 

Refereces

Demoulin CF, Lara YJ, Cornet L, François C, Baurain D, Wilmotte A, Javaux EJ (2019). Cyanobacteria evolution: Insight from the fossil record. Free Radic Biol Med. 2019 Aug 20;140:206-223. doi: 10.1016/j.freeradbiomed.2019.05.007. 

Hamilton TL, Bryant DA, Macalady JL (2016). The role of biology in planetary evolution: cyanobacterail primary production in low oxygen proterozoic oceans. Evolutionary Microbiol. 18:325-340

Kuczynski J, Stombaugh J, Walters WA, Gonzalez A, Caporaso JG, Knight R (2011). Using QIIME to analysze 16S rRNA gene sequences from microbial communities. Curr Protoc Bioinformatics. doi: 10.1002/0471250953.bi1007s36
