#! /bin/bash -v

# let X work
export DISPLAY=:0.0
xhost +

for i in impro-visor
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
