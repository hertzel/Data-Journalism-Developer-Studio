#! /bin/bash -v

for i in impro-visor system
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
