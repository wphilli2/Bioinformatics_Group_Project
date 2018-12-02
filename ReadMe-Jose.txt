<<<<<<< HEAD
###Build a HMM for each of the 6 transcript proteins and search the 4 translated "RNAseq files"


##For each of the 6 transcripts make a muscle alignment from your downloaded protein sequences

##Write script for alignment of protein transcripts
#muscle.sh

for f in $(ls Bioinformatics_Group_Project/Results_files/*.fasta); do
 
muscle -in $f -out ${f%.fasta}.align;

done



##Using these alignments, construct 6 HMM protein models using hmmbuild

##Build HMM protein models using HMMbuild
#hmmbuild.sh
for g in $(ls Bioinformatics_Group_Project/Results_files/*.align); do

/afs/nd.edu/user29/jwharto1/local/bin/hmmbuild ${g%.align}.hmm $g


done



##Finally, search all 4 translated "RNAseq files" for each of the 6 HMM protein models using hmmsearch

##Do a hmmsearch

#nloop.sh

for i in $(ls Bioinformatics_Group_Project/Results_files/*.hmm); do
for m in $(ls ~/Bioinformatics_Group_Project/*.fasta); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmsearch $i $m;
done;
done
#Saved search results in finalsearch.txt

bash nloop.sh > finalsearch.txt
=======
###Build a HMM for each of the 6 transcript proteins and search the 4 translated "RNAseq files"

##For each of the 6 transcripts make a muscle alignment from your downloaded protein sequences
##Write script for alignment of protein transcripts
#muscle.sh
for f in $(ls Bioinformatics_Group_Project/Results_files/*.fasta); do
  muscle -in $f -out ${f%.fasta}.align;
done

##Using these alignments, construct 6 HMM protein models using hmmbuild
##Build HMM protein models using HMMbuild
#hmmbuild.sh
for g in $(ls Bioinformatics_Group_Project/Results_files/*.align); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmbuild ${g%.align}.hmm $g

done

##Finally, search all 4 translated "RNAseq files" for each of the 6 HMM protein models using hmmsearch
##Do a hmmsearch
#hmmsearch.sh
for i in $(ls Bioinformatics_Group_Project/Results_files/*.hmm); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmsearch $i ~/Bioinformatics_Group_Project/uniquetranscripts.fasta;
done

#Saved search results in search.txt
bash hmmsearch.sh > search.txt
>>>>>>> 795091564685a278fdc698229f689e24b3a7bc9d


