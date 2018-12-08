for x in $@
do
       cd $x
        y=$(echo $x | sed -E 's/^([A-Z][a-z][a-z]).*\//\1/')
        A=$(grep -v "#" *Control1*.hits | wc -l)
        echo $y.C1 $x Control $A >> ../hitcounts.txt
        B=$(grep -v "#" *Control2*.hits | wc -l)
        echo $y.C2 $x Control $B >> ../hitcounts.txt
        C=$(grep -v "#" *Obese1*.hits | wc -l)
        echo $y.O1 $x Obese $C >> ../hitcounts.txt
        D=$(grep -v "#" *Obese2*.hits | wc -l)
        echo $y.O2 $x Obese $D >> ../hitcounts.txt
        cd ..
done
