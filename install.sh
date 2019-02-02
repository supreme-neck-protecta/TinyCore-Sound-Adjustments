#!/bin/sh

border()
{
    local title="| $1 |"
    local edge=${title//?/-}
    echo -e "${edge}\n${title}\n${edge}"
    sleep 1
}

border 'Installing Sound File'
sudo mv /opt/bootlocal.sh /opt/bootlocal.sh.bak
wget https://github.com/dynobot/TinyCore-Sound-Adjustments/raw/master/bootlocal.sh
sudo chmod 755 bootlocal.sh
sudo mv bootlocal.sh /opt/bootlocal.sh

sudo filetool.sh -b

border 'Rebooting System'

sudo reboot
