#! /usr/bin/perl -w
my ($link) = @ARGV;
print "Fetching ${link}\n";
my @fields = split /\//, $link;
my $md5sum = "${fields[4]}  ${fields[5]}\n";
system "echo \'${md5sum}\' | head -n 1 > md5";
system "wget ${link}";
system "md5sum -c md5";
system "tar xf ${fields[5]}" if ${fields[5]} =~ /\.gz$/;
exit;
