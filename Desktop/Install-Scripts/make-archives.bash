#! /bin/bash -v
cd ~
tar cvf - /usr/lib/R | bzip2 -9c > usr-lib-R.tar.bz2
tar cvf - /etc/init.d/rstudio-server /etc/pam.d/rstudio /usr/local \
  | bzip2 -9c > usr-local.tar.bz2
tar cvf - perl5 .cpan | bzip2 -9c > perl5.tar.bz2
