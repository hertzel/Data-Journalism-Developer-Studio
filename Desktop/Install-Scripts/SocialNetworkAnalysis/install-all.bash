#! /bin/bash -v

# let X work
export DISPLAY=:0.0
xhost +
for i in system
do
  sudo ./install-${i}.bash 2>&1 | tee install-${i}.log
done
