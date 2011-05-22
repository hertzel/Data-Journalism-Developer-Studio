#! /bin/bash -v

rm -fr ~/.cpan ~/perl5 # clean slate
echo 'eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
echo 'export MANPATH=${MANPATH}:${HOME}/perl5/man' >>~/.bashrc
vim ~/.bashrc
. ~/.bashrc

cpan < yesyes.cpan # first, autoconfigure
cpan < prep.cpan # set config options

for i in \
  Email::Send::Gmail \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Facebook \
  Google::Data::JSON \
  Google::Voice \
  Hash::Flatten \
  HTTP::Client::Parallel \
  MIME::Base64 \
  Net::Google::Spreadsheets \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  URI::Escape \
  WebService::Bitly
do
  echo "notest install $i" | sudo cpan 2>&1 | tee $i.log
done
