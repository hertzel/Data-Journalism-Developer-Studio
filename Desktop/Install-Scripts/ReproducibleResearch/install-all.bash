#! /bin/bash -v

# let X work
export DISPLAY=:0.0
xhost +
sudo ./install-task-view.bash 2>&1 | tee install-task-view.log
