## Usage: bash Ptpn5_primate_loop.sh 
for file in $@
do
filename=$(echo $file)
/afs/nd.edu/user24/wphilli2/local/bin/hmmer/hmmsearch --tblout $filename.hits Ptpn5_primate_profile.hmm $file
done
