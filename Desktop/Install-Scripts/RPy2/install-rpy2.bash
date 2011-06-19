#!/bin/bash

# RPy2 - Python / R interface
mkdir -p /usr/local/src; cd /usr/local/src
DIR=rpy2-2.1.8
WHAT=${DIR}.tar.gz
WHERE=http://downloads.sourceforge.net/project/rpy/rpy2/2.1.x
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
pushd ${DIR}
export PATH=${PATH}:/usr/local/bin
python setup.py install
popd
rm -fr ${WHAT} ${DIR}
