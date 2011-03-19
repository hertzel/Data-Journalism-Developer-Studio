#! /bin/bash -v
for i in mallet
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
