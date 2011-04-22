#! /bin/bash -v

# install "local-lib"
vi ~/.bashrc
rm -fr ~/.cpan ~/perl5 # clean slate
wget \
  http://search.cpan.org/CPAN/authors/id/A/AP/APEIRON/local-lib-1.008004.tar.gz
tar xf local-lib*gz
pushd local-lib*
perl Makefile.PL --bootstrap
make
make test
make install
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >>~/.bashrc
echo 'export MANPATH=${MANPATH}:~/perl5/man' >>~/.bashrc
popd

. ~/.bashrc # switch to local Perl
cpan < yesyes # first, autoconfigure
cpan CPAN # next, update CPAN itself
cpan < prep.cpan # set config options

for i in \
  Net::SSLeay \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  Facebook \
  URI::Escape \
  MIME::Base64 \
  XML::XPath \
  Google::Data::JSON \
  JSON::XS \
  WebService::Bitly \
  POE \
  Data::Dumper \
  Email::Send::Gmail \
  Email::Send \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Email::Simple \
  HTTP::Client::Parallel \
  Net::Google::Spreadsheets \
  Net::Twitter \
  Try::Tiny \
  UNIVERSAL::require \
  HTTP::Date \
  YAML::Tiny \
  Software::License \
  Module::Build \
  WWW::Mechanize \
  AnyEvent::Twitter::Stream \
  Hash::Flatten \
  Browser::Open \
  Google::Voice
do
  echo "notest install $i" | cpan 2>&1 | tee $i.log
done

# get rid of space-wasters
rm -fr ~/.cpan/build ~/.cpan/sources
