for i in *.hits; do
grep -c '2.4' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
