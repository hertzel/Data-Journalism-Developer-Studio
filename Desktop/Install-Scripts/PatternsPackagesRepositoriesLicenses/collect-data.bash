#! /bin/bash -v

# make XML files - all openSUSE stuff should be here!
zypper search -is -t pattern | tee patterns.txt | ./patterns-xml.pl \
  > patterns.xml
zypper search -is -t package | tee packages.txt | ./packages-xml.pl \
  | sort -u > packages.xml
zypper repos -d | tee repositories.txt | ./repositories-xml.pl \
  > repositories.xml
zypper licenses > licenses.txt
