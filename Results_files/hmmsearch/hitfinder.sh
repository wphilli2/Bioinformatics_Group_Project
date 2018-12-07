for x in $@
do
	cd $x
	echo $x >> ../Controlhits.txt
	echo $x >> ../Obesityhits.txt
	for file in *Con*.hits
		do 
		grep -v "#" $file | wc -l >> ../Controlhits.txt
		done
	for file in *Obes*.hits
		do
		grep -v "#" $file | wc -l >>../Obesityhits.txt
		done
	cd ..
done

