#! /bin/bash -v

./install-local-lib.bash

. ~/.bashrc # switch to local Perl

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
  YAML::Syck \
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
  echo "notest install $i" | cpan 2>&1 | tee $i.log
done
