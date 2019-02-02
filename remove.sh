#!/bin/sh

border()
{
    local title="| $1 |"
    local edge=${title//?/-}
    echo -e "${edge}\n${title}\n${edge}"
    sleep 1
}

border 'Removing Sound Adjustments'
sudo rm install.sh
sudo rm /opt/bootlocal.sh
sudo mv /opt/bootlocal.sh.bak /opt/bootlocal.sh
sudo filetool.sh -b

border 'Rebooting System'

