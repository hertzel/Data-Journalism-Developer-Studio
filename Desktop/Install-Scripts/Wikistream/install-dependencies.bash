#! /bin/bash -v

for i in NoSQL Node
do
  pushd ../$i
  ./install-dependencies.bash
  ./install-all.bash
  popd
done
