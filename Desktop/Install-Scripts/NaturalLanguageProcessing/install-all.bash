#! /bin/bash -v

for i in wordnet task-view
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
