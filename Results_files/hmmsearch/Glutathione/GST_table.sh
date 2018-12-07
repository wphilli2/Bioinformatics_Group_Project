for i in *.hits; do
grep -c '461.2' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
