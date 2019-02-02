#!/bin/sh

border()
{
    local title="| $1 |"
    local edge=${title//?/-}
    echo -e "${edge}\n${title}\n${edge}"
    sleep 1
}

border 'Downloading Sound File'

wget https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/Sound.sh -O /usr/bin/Sound.sh

mv /opt/bootlocal.sh /opt/bootlocal.sh.bak
mv bootlocal.sh /opt/bootlocal.sh
sudo chmod 755 bootlocal.sh
sudo filetool.sh -b

border 'Rebooting System'

sudo reboot
