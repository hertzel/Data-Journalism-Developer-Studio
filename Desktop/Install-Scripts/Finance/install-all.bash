#! /bin/bash -v

# let X work
export DISPLAY=:0.0
xhost +

# warning: quantlib takes a *long* time and a lot of space
for i in quantlib armadillo task-view
do
  sudo ./install-${i}.bash 2>&1 | tee install-${i}.log
done
