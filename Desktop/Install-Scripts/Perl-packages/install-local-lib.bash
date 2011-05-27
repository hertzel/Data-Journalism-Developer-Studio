#! /bin/bash -v

rm -fr ~/.cpan ~/perl5 # clean slate
tar xf local-lib*gz
pushd local-lib*
perl Makefile.PL --bootstrap
make
make test
make install
echo 'eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
echo 'export MANPATH=${MANPATH}:${HOME}/perl5/man' >>~/.bashrc
vim ~/.bashrc
popd

# hack the configuration so installs work!
cpan < prep1.cpan
cp ~/.cpan/CPAN/MyConfig.pm .
sed "s:/root/:/${HOME}/:" MyConfig.pm > ~/.cpan/CPAN/MyConfig.pm
rm MyConfig.pm
