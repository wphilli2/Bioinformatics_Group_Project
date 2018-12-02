## Script must be run in the directory containing Ptpn5_primate_profile.hmm and the file to be searched, all on the remote machine
## Description: The loop assigns a file name by echoing the file. It then performs an hmmsearch on the file and outputs the data to a
##    file with the same name as the file and an additional ".hits" at the end. PtPn5_primate_profile.hmm (the protein profile for Ptpn5
##    created using primate proteins) is the hmm used for the search.
## Usage: bash Ptpn5_primate_loop.sh <RNAseq file to be searched
for file in $@
do
filename=$(echo $file)
/afs/nd.edu/user24/wphilli2/local/bin/hmmer/hmmsearch --tblout $filename.hits Ptpn5_primate_profile.hmm $file
done
