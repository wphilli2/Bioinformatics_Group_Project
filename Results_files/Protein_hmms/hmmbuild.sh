for g in $(ls Bioinformatics_Group_Project/Results_files/*.align); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmbuild ${g%.align}.hmm $g
done
