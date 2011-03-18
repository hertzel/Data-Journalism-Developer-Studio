#! /usr/bin/perl -w
use strict;

while (<>) {
  chomp $_;
  next if $_ !~ /Yes/;
  my @fields = split /\|/, $_;
  my $blank = pop @fields;
  my $url = pop @fields; $url =~ s/ //g;
  my $type = pop @fields; $type =~ s/ //g;
  next if $type =~ /NONE/; # these croak the import!
  $_ =~ s/^i \| //;
  $_ =~ s/ .*$//;
  print "  \<repository type=\'${type}\'\>\n";
  print "    \<source path=\'${url}\'\/\>\n";
  print "  \<\/repository\>\n";
}
exit;
