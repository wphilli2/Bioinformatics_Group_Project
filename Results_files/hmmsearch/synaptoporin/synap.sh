for i in *.hits; do
grep -c '657.8' $i;
done > counts

ls *.hits > names

paste names counts > $1.txt
