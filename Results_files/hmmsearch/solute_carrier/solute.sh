for i in *.hits; do
grep -c '769.3' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
