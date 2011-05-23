#! /bin/bash -v

export DIR=mallet-2.0.5
export WHERE=http://mallet.cs.umass.edu/dist

sudo mkdir -p /usr/local/mallet
cd /usr/local/mallet
sudo rm -f ${DIR}.tar.gz
sudo wget ${WHERE}/${DIR}.tar.gz
sudo rm -fr ${DIR}
sudo tar xf ${DIR}.tar.gz
cd ${DIR}
sudo ant
cd ..
sudo rm -f ${DIR}.tar.gz
sudo /sbin/ldconfig
sudo /sbin/SuSEconfig
