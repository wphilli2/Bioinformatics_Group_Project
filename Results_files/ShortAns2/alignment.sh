file = $(echo $1)
/afs/nd.edu/user24/wphilli2/local/bin/muscle3.8.31_i86linux64 -in $1 -out $file.align
