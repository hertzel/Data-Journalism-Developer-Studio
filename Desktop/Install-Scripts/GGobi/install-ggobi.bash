#! /bin/bash -v

mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=ggobi-2.1.8
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
pushd ${DIR}

# the GGobi build croaks if graphviz-devel is installed
zypper remove -y graphviz-devel
./configure --with-all-plugins
make 
make install
make ggobirc
mkdir -p /etc/xdg/ggobi
cp ggobirc /etc/xdg/ggobi/ggobirc
/sbin/ldconfig
/sbin/SuSEconfig

# put graphviz-devel back - we need it for Rgraphviz
zypper install -y graphviz-devel
popd

# clean up
rm -fr ${WHAT} ${DIR}
popd
