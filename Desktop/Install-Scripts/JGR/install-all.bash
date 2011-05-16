#! /bin/bash -v

xhost +
for i in system
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done

sudo ln -sf /usr/lib64/R/library/JGR/scripts/run /usr/local/bin/jgr
