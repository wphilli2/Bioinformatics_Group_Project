for i in $(ls Bioinformatics_Group_Project/Results_files/*.hmm); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmsearch $i ~/Bioinformatics_Group_Project/uniquetranscripts.fasta;
done
