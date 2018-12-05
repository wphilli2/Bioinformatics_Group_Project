for i in *.hits; do
grep -c '10.9' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
