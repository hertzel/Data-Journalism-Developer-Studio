#! /bin/bash -v

sudo /etc/init.d/redis start
nohup node /opt/wikistream/updates.js > updates.nohup &
nohup node /opt/wikistream/app.js > app.nohup &
echo "Browse to localhost:3000"
