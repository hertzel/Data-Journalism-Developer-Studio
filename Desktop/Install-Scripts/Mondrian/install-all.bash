#! /bin/bash -v

for i in mondrian system
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done

cp Mondrian.desktop ~/Desktop
