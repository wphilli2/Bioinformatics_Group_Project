## Location: Must be run in remote machine in directory	containing the fasta file to be	aligned
## Usage: bash alignment.sh <fasta file	to align>
## Description:	Creates	an alignment from the fasta input file


file = $(echo $1)
/afs/nd.edu/user24/wphilli2/local/bin/muscle3.8.31_i86linux64 -in $1 -out $file.align
