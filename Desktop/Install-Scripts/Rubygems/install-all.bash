#!/bin/bash

# RSRuby - Ruby / R interface
if [ -e /usr/lib/R ]
then
  sudo gem install rsruby -- --with-R-dir=/usr/lib/R
fi
if [ -e /usr/lib64/R ]
then
  sudo gem install rsruby -- --with-R-dir=/usr/lib64/R
fi
if [ -e /usr/local/lib/R ]
then
  sudo gem install rsruby -- --with-R-dir=/usr/local/lib/R
fi
if [ -e /usr/local/lib64/R ]
then
  sudo gem install rsruby -- --with-R-dir=/usr/local/lib64/R
fi
