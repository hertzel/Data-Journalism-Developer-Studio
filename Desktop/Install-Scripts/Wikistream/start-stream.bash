#! /bin/bash -v

sudo /etc/init.d/redis restart
nohup node /opt/wikistream/updates.js > updates.nohup &
nohup node /opt/wikistream/app.js > app.nohup &
firefox localhost:3000 &
