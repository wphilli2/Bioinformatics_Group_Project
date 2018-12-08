##Using these alignments, construct 6 HMM protein models using hmmbuild

##Build HMM protein models using HMMbuild
#hmmbuild.sh

for g in $(ls Bioinformatics_Group_Project/Results_files/*.align); do
/afs/nd.edu/user29/jwharto1/local/bin/hmmbuild ${g%.align}.hmm $g
done
