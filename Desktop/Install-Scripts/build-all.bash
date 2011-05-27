#! /bin/bash

# do all the dependencies first - minimizes babysitting
for i in */cleanup.bash
do
  j=`echo ${i} | sed 's/cleanup.bash//'`
  pushd ${j}
  ./cleanup.bash
  ./install-dependencies.bash
  popd
done

# Perl packages have to be done first for a few other things to work
pushd Perl-packages
./install-all.bash
popd

for i in */cleanup.bash
do
  if [ "${i}" != "Perl-packages/cleanup.bash" ]
  then
    j=`echo ${i} | sed 's/cleanup.bash//'`
    pushd ${j}
    ./install-all.bash
    popd
  fi
done
