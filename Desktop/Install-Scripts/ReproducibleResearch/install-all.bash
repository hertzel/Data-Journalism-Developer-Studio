#! /bin/bash -v

xhost +
sudo ./install-task-view.bash 2>&1 | tee task-view.log
./install-Sweave-lyx.bash 2>&1 | tee Sweave-lyx.log
