## Usage: bash tophits.sh *.fasta
## Must be used in the directory containing the sequences of interest (fasta files), and only those fasta files (otherwise all of the fasta files will be concatenated and 
##	appended into Hits.txt
## For this exercise, the script was run in the Results_file directory which contained the BLAST hits from each transcript in separate files. The loop concatenated each file
##	and piped the contents into a cut function to select only the second field (the name of the actual sequence that was a hit). These cut fields were piped into a head
##	function to select only the top hit, which was then appended to the Hits.txt file. Hits.txt thus contains the top hit for each trancript.
## *Code Begins Below*


for i in $@
	do
	cat $i | cut -d , -f 2 | head -n 1 >> Hits.txt
	done

