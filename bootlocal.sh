#!/bin/sh
# put other system startup commands here

#Reduce Audio thread latency
chrt -f -p 43 $(pidof ksoftirqd/0)
chrt -f -p 43 $(pidof ksoftirqd/1)
chrt -f -p 43 $(pidof ksoftirqd/2)
chrt -f -p 43 $(pidof ksoftirqd/3)

#Reduce operating system latency
#echo noop > /sys/block/mmcblk0/queue/scheduler
#echo 1000000 > /proc/sys/kernel/sched_latency_ns
#echo 100000 > /proc/sys/kernel/sched_min_granularity_ns
#echo 25000 > /proc/sys/kernel/sched_wakeup_granularity_ns

GREEN="$(echo -e '\033[1;32m')"

echo
echo "${GREEN}Running bootlocal.sh..."
#pCPstart------
/home/tc/www/cgi-bin/pcp_startup.sh 2>&1 | tee -a /var/log/pcp_boot.log
#pCPstop------

#Squeezelite FIFO priority
sleep 5
chrt -f -p 27 $(pidof squeezelite)
~
