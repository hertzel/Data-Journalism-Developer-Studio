#! /bin/bash -v

sudo cpan < yesyes # first, autoconfigure
sudo cpan CPAN # next, update CPAN itself
sudo cpan < prep.cpan # set config options

for i in \
  Email::Send::Gmail \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Facebook \
  Google::Data::JSON \
  Google::Voice
  Hash::Flatten \
  HTTP::Client::Parallel \
  MIME::Base64 \
  Module::Build \
  Net::Google::Spreadsheets \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  URI::Escape \
  WebService::Bitly
do
  echo "notest install $i" | sudo cpan 2>&1 | tee $i.log
done
