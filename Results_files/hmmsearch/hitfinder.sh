for x in $@
do
        cd $x
        A=$(grep -v "#" *Control1*.hits | wc -l)
        echo $x.C1 $A >> ../modifiedhits.txt
        B=$(grep -v "#" *Control2*.hits | wc -l)
        echo $x.C2 $B >> ../modifiedhits.txt
        C=$(grep -v "#" *Obese1*.hits | wc -l)
        echo $x.O1 $C >> ../modifiedhits.txt
        D=$(grep -v "#" *Obese2*.hits | wc -l)
        echo $x.O2 $D >> ../modifiedhits.txt
        cd ..
done
