#! /bin/bash -v

# local stuff - no network required
vi ~/.bashrc
rm -fr ~/.cpan ~/perl5 # clean slate
tar xf local-lib*gz
cd local-lib*
perl Makefile.PL --bootstrap
make
make test
make install
echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >>~/.bashrc
echo 'export MANPATH=${MANPATH}:/home/kipling/perl5/man' >>~/.bashrc
cd ..

. ~/.bashrc # switch to local Perl
cpan # first, autoconfigure
cpan CPAN # next, update CPAN itself
cpan < prep.cpan # set config options

for i in \
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
