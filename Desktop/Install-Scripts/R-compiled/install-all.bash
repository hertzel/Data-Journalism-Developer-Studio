#! /bin/bash -v

xhost +
for i in R system
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
