##Finally, search all 4 translated "RNAseq files" for each of the 6 HMM protein models using hmmsearch
##Do a hmmsearch

for i in $(ls Bioinformatics_Group_Project/Results_files/*.hmm); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmsearch $i ~/Bioinformatics_Group_Project/uniquetranscripts.fasta;
done
#Saved search results in search.txt
bash hmmsearch.sh > search.txt
