#! /bin/bash -v

# refresh and update
sudo zypper refresh; sudo zypper update

# add a user
sudo /usr/sbin/useradd -r rstudio-server

# soft link
sudo ln -sf /usr/local/rstudio-server/bin/rstudio-server \
  /usr/sbin/rstudio-server
sudo ln -sf /etc/init.d/rstudio-server /sbin/rcrstudio-server

# firewall - open port 8787
sudo /sbin/yast2 firewall

# NTP server
sudo /sbin/yast2 ntp-client

# run levels
sudo /sbin/yast2 runlevel

# we should be ready - browse to IP address
/sbin/ifconfig
