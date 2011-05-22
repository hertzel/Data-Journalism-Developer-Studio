#! /bin/bash -v

# add a user
sudo /usr/sbin/useradd -r rstudio-server

# soft link
sudo ln -sf /usr/local/rstudio-server/bin/rstudio-server \
  /usr/sbin/rstudio-server

# config files
sudo cp /usr/local/lib/rstudio-server/extras/init.d/suse/rstudio-server \
  /etc/init.d/rstudio-server
sudo ln -sf /etc/init.d/rstudio-server /sbin/rcrstudio-server
sudo cp /usr/local/lib/rstudio-server/extras/pam/rstudio /etc/pam.d/rstudio

# firewall - open port 8787
sudo cp SuSEfirewall2 /etc/sysconfig/SuSEfirewall2

# run levels
sudo /etc/init.d/rstudio-server restart
sudo /sbin/chkconfig rstudio-server on

# we should be ready - browse to IP address
/sbin/ifconfig
