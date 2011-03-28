#! /bin/bash -v

sudo rm -fr rapache*
for i in *.log
do
  rm $i
done
rm .R*
