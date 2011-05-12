#! /bin/bash -v

# add a user
sudo /usr/sbin/useradd -r rstudio-server

# soft link
sudo ln -sf /usr/local/rstudio-server/bin/rstudio-server /usr/sbin/rstudio-server

# config files
sudo cp initscript /etc/init.d/rstudio-server
sudo ln -s /etc/init.d/rstudio-server /sbin/rcrstudio-server
sudo cp pamscript /etc/pam.d/rstudio

# firewall - open port 8787
sudo /sbin/yast2 firewall

# run levels
sudo /sbin/chkconfig rstudio-server on
sudo /etc/init.d/rstudio-server restart

# we should be ready - browse to IP address
/sbin/ifconfig
