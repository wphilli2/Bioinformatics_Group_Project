###Build a HMM for each of the 6 transcript proteins and search the 4 translated "RNAseq files"


##For each of the 6 transcripts make a muscle alignment from your downloaded protein sequences
##Write script for alignment of protein transcripts
#muscle.sh


for f in $(ls Bioinformatics_Group_Project/Results_files/*.fasta); do
  muscle -in $f -out ${f%.fasta}.align;
done
