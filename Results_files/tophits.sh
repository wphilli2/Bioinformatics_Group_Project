for i in $@
	do
	cat $i | cut -d , -f 2 | head -n 1 >> Hits.txt
	done

