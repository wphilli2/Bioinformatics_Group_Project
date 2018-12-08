## Location: Must be run in remote machine in directory	containing the fasta file to be	aligned
## Usage: bash alignment.sh <fasta file	to align>
## Description:	Creates	an alignment from the fasta input file


file = $(echo $1)
<path to muscle on remote machine> -in $1 -out $file.align
