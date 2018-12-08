This directory has all of the results from this project. There are multiple directories
containing the results:

Transcripts: 
	This directory contains the files containing the hits from the BLAST search on NCBI
	of the uniquetranscrips.fasta file (in the Project_files directory). It also 
	has the script used to compile the top hits (tophits.sh) and th file containing the top 
	hit for each transcript (Hits.txt).
Protein_hits:
	This directory contains the files containing the selected proteins from a blastx
	search on NCBI of the top hit from each transcript. 
Protein_alignments:
	This directory contains the alignments of the protein lists from Protein_hits.
	The alignments were obtained using muscle. The script containing the code for
	carrying out the alignments (muscle.sh) is also in this directory.
Protein_hmms
	This directory contains the HMM profiles generated from the alignments in 
	Protein_alignments using hmmerbuild. The script that was used (hmmbuild.sh) is also in the
	directory.
hmmsearch
	This directory contains files for each protein HMM (from Protein_hmms) with hits
	obtained after searching each of the RNA seq files against that HMM.
	The script that was used to search (search.sh), the script that was used to compile the 
	number of hits from the search (hitfinder.sh), and the file containing the numbers of hits
	(hitcounts.txt) are also in the directory.
ShortAns2:
	This directory contains files relevant to short answer question 2.
	It contains a Ptpn5_primate directory and aGlutathione_S_transferase_A2_primate
	directory. Each of these directories contains the fasta files with the ten proteins
	obtained using a blast to find hits for the protein within the order of primate for
	the given protein. It also contains the alignment files for these proteins and an 
	HMM built from the alignment. Finally, they contain the files showing the hits obtained
	from a search of the profiles against Obes1protein.fasta. This directory also contains the 
	scripts used to create the files above (alignment.sh to make the new alignements, build.sh
	to make the new HMM profiles, and primate_script.sh to perform the new searches). 
ShortAns1:
	This directory contains files relevant to short answer question 1
scripts
	This directory contains copies of all the scripts used in the project
Plot.R
	This is the R script used to produce the plot

  

