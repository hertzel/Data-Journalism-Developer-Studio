#! /bin/bash -v

# Build OpenFTS
. ~/.bashrc
wget \
  http://downloads.sourceforge.net/project/openfts/openfts/OpenFTS-perl%2C%20v0.40/Search-OpenFTS-0.40.tar.gz?use_mirror=superb-sea2
tar xf Search-OpenFTS*gz
cd Search-OpenFTS*
perl Makefile.PL 2>&1 | tee perl.log
make 2>&1 | tee make.log
make test 2>&1 | tee test.log
make install 2>&1 | tee install.log
cd ..
