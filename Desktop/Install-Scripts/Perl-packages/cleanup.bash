#! /bin/bash -v

for i in *.log
do
  rm $i
done
rm -fr local-lib*
