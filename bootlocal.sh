#!/bin/sh
# put other system startup commands here

GREEN="$(echo -e '\033[1;32m')"

#Reduce Audio thread latency
sudo chrt -f -p 43 $(pidof ksoftirqd/0)
sudo chrt -f -p 43 $(pidof ksoftirqd/1)
sudo chrt -f -p 43 $(pidof ksoftirqd/2)
sudo chrt -f -p 43 $(pidof ksoftirqd/3)

echo
echo "${GREEN}Running bootlocal.sh..."
#pCPstart------
/home/tc/www/cgi-bin/pcp_startup.sh 2>&1 | tee -a /var/log/pcp_boot.log
#pCPstop------

#Squeezelite FIFO priority
#sleep 5
#sudo chrt -f -p 27 $(pidof squeezelite)
~
