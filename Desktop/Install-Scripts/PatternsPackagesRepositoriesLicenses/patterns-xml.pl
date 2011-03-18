#! /usr/bin/perl -w
use strict;

while (<>) {
  chomp $_;
  next if $_ !~ /\| pattern/;
  $_ =~ s/^i \| //;
  $_ =~ s/ .*$//;
  print "    \<opensusePattern name=\'${_}\'\/\>\n";
}
exit;
