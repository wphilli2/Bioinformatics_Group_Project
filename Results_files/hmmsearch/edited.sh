for x in $@
do
       cd $x
	y=$(echo $x | sed -E 's/^([A-Z][a-z][a-z]).*\//\1/')
        A=$(grep -v "#" *Control1*.hits | wc -l)
        echo $x Control1 $A >> ../hitcounts.txt
        B=$(grep -v "#" *Control2*.hits | wc -l)
        echo $x Control2 $B >> ../hitcounts.txt
        C=$(grep -v "#" *Obese1*.hits | wc -l)
        echo $x Obese1 $C >> ../hitcounts.txt
        D=$(grep -v "#" *Obese2*.hits | wc -l)
        echo  $x Obese2 $D >> ../hitcounts.txt
        cd ..
done


