## Location: Must be run in a directory containing only the hmm profiles to search against and the sequences to search
## Usage: bash search.sh
## Description: This script is a nested for loop. The first loop loops through the hmm files to search against. It assigns a variable that gives the filename (A).
##	The loop inside takes the current hmm file being searched against and loops through each fasta file to be searched.       
##	It saves a variable name (filename) for the sequence file being searched against. It then performs the search and
##	saves the output to <filesearchedagainst>.<filesearched>.hits. The result is that each hmm profile is searched against each fasta file.


for i in *.hmm; do
A=$(echo $i)
for m in *.fasta; do
B=$(echo $m)
/afs/nd.edu/user24/wphilli2/local/bin/hmmer/hmmsearch --tblout $A.$B.hits $i $m;
done;
done
