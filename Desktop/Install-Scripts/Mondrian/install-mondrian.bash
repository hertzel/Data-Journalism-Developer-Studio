#! /bin/bash -v

rm -fr /usr/local/Mondrian
mkdir -p /usr/local/Mondrian
cp Mondrian.gif /usr/local/Mondrian/
cp mondrian /usr/local/bin/
cd /usr/local/Mondrian
wget http://rosuda.org/mondrian/Mondrian.jar
/sbin/ldconfig
/sbin/SuSEconfig
