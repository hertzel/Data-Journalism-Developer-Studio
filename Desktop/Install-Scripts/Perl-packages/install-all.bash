#! /bin/bash -v

rm -fr ~/.cpan ~/perl5 # clean slate
tar xf local-lib*gz
cd local-lib*
perl Makefile.PL --bootstrap
make
make test
make install
echo 'eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
echo 'export MANPATH=${MANPATH}:${HOME}/perl5/man' >>~/.bashrc
vim ~/.bashrc
cd ..

. ~/.bashrc # switch to local Perl
cpan < prep.cpan # set config options

for i in \
  AnyEvent::Twitter::Stream \
  Browser::Open \
  DBD::SQLite \
  Facebook \
  Hash::Flatten \
  JSON::XS \
  Net::Twitter \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  Data::Dumper \
  Email::Send::Gmail \
  Email::Send \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Email::Simple \
  HTTP::Client::Parallel \
  Net::Google::Spreadsheets \
  Try::Tiny \
  WebService::Bitly \
  Google::Voice
do
  echo "notest install $i" | sudo cpan 2>&1 | tee $i.log
done
