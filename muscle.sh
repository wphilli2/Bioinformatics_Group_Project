for f in $(ls Bioinformatics_Group_Project/Results_files/*.fasta); do
  muscle -in $f -out ${f%.fasta}.align;
done
