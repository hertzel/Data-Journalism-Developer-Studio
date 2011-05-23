#! /bin/bash

# Perl packages have to be done first for a few other things to work
pushd Perl-packages
./cleanup.bash
./install-dependencies.bash
./install-all.bash
popd

for i in */cleanup.bash
do
  if [ "${i}" != "Perl-packages/cleanup.bash" ]
  then
    j=`echo ${i} | sed 's/cleanup.bash//'`
    pushd ${j}
    ./cleanup.bash
    ./install-dependencies.bash
    ./install-all.bash
    popd
  fi
done
