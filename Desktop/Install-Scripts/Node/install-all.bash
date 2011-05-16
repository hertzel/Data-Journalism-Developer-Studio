#! /bin/bash -v

xhost +
for i in node
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
