#!/bin/bash

# RPy2 - Python / R interface
DIR=rpy2-2.1.8
WHAT=${DIR}.tar.gz
WHERE=http://downloads.sourceforge.net/project/rpy/rpy2/2.1.x
sudo rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
pushd ${DIR}
sudo python setup.py install
popd
sudo rm -fr ${WHAT} ${DIR}
