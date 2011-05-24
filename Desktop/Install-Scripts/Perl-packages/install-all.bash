#! /bin/bash -v

rm -fr ~/.cpan ~/perl5 # clean slate
echo 'eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
echo 'export MANPATH=${MANPATH}:${HOME}/perl5/man' >>~/.bashrc
vim ~/.bashrc
. ~/.bashrc

cpan < yesyes.cpan # first, autoconfigure
cpan < prep.cpan # set config options

for i in \
  AnyEvent::Twitter::Stream
  Browser::Open \
  Data::Dumper \
  DBD::SQLite \
  Email::Send \
  Email::Send::Gmail \
  Email::Sender::Simple \
  Email::Simple \
  Email::Simple::Creator \
  Facebook \
  Google::Data::JSON \
  Google::Voice \
  Hash::Flatten \
  HTTP::Client::Parallel \
  HTTP::Date \
  JSON::XS \
  MIME::Base64 \
  Module::Build \
  Net::Google::Spreadsheets \
  Net::Twitter \
  POE \
  Software::License \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  Try::Tiny \
  URI::Escape \
  UNIVERSAL::require \
  WebService::Bitly \
  WWW::Mechanize \
  XML::XPath \
  YAML::Tiny
do
  echo "notest install $i" | sudo cpan 2>&1 | tee $i.log
done
