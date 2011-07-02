#! /bin/bash -v

sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/server:/database/openSUSE_11.4/server:database.repo
sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/Virtualization:/Cloud:/OpenStack/openSUSE_11.4/Virtualization:Cloud:OpenStack.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y redis redis-doc couchdb mongodb riak
for i in redis couchdb mongodb riak
do
  sudo /sbin/chkconfig $i on
  sudo /etc/init.d/$i start
done
