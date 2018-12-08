## Location: This script should be run in the directory containing the directories with searched hmm files for each protein. In this case,
##     the script is run in hmmsearch/. 
## Description: The script loops through all directories passed as an argument. It moves to the directory and sets a variable (A, B, C, or D)
##     that stores a line count from all Control1, Control2, Obese1, or Obese2 files that have had all lines containing "#" removed. 
##     The script then echoes the folder (the name of the protein), the category (Control1, Control2, Obese1, or Obese2), and the variable
##     for that part of the loop. The echo output is appended to a file in hmmsearch/ (or the directory directly above) called hitcounts.txt
##     Finally, the script moves back up one level and can start the loop over.
## Usage: bash hitfinder.sh <all directories that you want to search through>

for x in $@
do
       cd $x
        A=$(grep -v "#" *Control1*.hits | wc -l)
        echo $x Control1 $A >> ../hitcounts.txt
        B=$(grep -v "#" *Control2*.hits | wc -l)
        echo $x Control2 $B >> ../hitcounts.txt
        C=$(grep -v "#" *Obese1*.hits | wc -l)
        echo $x Obese1 $C >> ../hitcounts.txt
        D=$(grep -v "#" *Obese2*.hits | wc -l)
        echo $x Obese2 $D >> ../hitcounts.txt
        cd ..
done
