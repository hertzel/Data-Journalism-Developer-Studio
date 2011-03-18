#! /usr/bin/perl -w
use strict;

while (<>) {
  chomp $_;
  next if $_ !~ /\| package/;
  $_ =~ s/^i \| //;
  $_ =~ s/ .*$//;
  print "    \<package name=\'${_}\'\/\>\n";
}
exit;
