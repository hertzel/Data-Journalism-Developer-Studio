#! /bin/bash -v
xhost +
for i in maquetta
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
