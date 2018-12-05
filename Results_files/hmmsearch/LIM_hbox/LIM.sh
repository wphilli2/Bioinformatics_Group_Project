for i in *.hits; do
grep -c '887.5' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
