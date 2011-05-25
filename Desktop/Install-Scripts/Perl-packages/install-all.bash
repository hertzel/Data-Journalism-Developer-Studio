#! /bin/bash -v

for i in local-lib packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
