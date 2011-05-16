#! /bin/bash -v

# warning: quantlib takes a *long* time and a lot of space
xhost +
for i in quantlib armadillo task-view
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
