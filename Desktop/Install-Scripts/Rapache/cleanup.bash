#! /bin/bash -v

sudo rm -fr rapache*
for i in *.log
do
  rm -f $i
done
rm .R*
