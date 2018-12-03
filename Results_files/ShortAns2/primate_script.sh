## Script must be run in the directory containing the profile to be searched against and the file to be searched, all on the remote machine
## Description: The loop assigns a file name by echoing the file to be searched and the profile searched against. It then performs an hmmsearch on the 
## file and outputs the data to a file with the same name as the file and an additional ".hits" at the end. PtPn5_primate_profile.hmm (the protein profile for Ptpn5
##    created                                                        
## Usage: bash primate_script.sh <RNAseq file to be searched> <hmm profile to search against>


filename=$(echo $1_$2)
/afs/nd.edu/user24/wphilli2/local/bin/hmmer/hmmsearch --tblout $filename.hits $2 $1
done
