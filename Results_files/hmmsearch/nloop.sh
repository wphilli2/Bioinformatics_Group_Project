for i in $(ls Bioinformatics_Group_Project/Results_files/*.hmm); do
for m in $(ls ~/Bioinformatics_Group_Project/*.fasta); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmsearch $i $m;
done;
done
