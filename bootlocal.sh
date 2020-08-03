#!/bin/sh
# put other system startup commands here

GREEN="$(echo -e '\033[1;32m')"

echo
echo "${GREEN}Running bootlocal.sh..."
#pCPstart------
/home/tc/www/cgi-bin/pcp_startup.sh 2>&1 | tee -a /var/log/pcp_boot.log
#pCPstop------

#Reduce Audio thread latency
chrt -f -p 43 $(pidof ksoftirqd/0)
chrt -f -p 43 $(pidof ksoftirqd/1)
chrt -f -p 43 $(pidof ksoftirqd/2)
chrt -f -p 43 $(pidof ksoftirqd/3)
