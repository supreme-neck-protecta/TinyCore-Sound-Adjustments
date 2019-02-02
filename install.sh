#!/bin/sh

border()
{
    local title="| $1 |"
    local edge=${title//?/-}
    echo -e "${edge}\n${title}\n${edge}"
    sleep 1
}

border 'Downloading Sound File'

wget https://github.com/dynobot/TinyCore-Sound-Adjustments/raw/master/bootlocal.sh -O /opt/bootlocal.sh
mv /opt/bootlocal.sh /opt/bootlocal.sh.bak
mv bootlocal.sh /opt/bootlocal.sh
sudo chmod 755 bootlocal.sh
sudo filetool.sh -b

border 'Rebooting System'

sudo reboot
