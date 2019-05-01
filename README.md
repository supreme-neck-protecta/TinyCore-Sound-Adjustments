# TinyCore Linux Sound-Adjustments

## TinyCore Linux Based RPi tweaks for improved sound.
- For Debian based systems see [Debian Sound Tweaks](https://github.com/dynobot/Linux-Audio-Adjustments)

To improve the sound of the Raspberry Pi using TinyCore Linux several parameters can be adjusted. 

1) Improving the priority of the Audio threads
2) Change audio thread scheduling from 'other' to FIFO
3) Improving the latency of the Operating System with Kernel adjustments
4) Change Squeezelite priority and thread scheduling to FIFO

## Prerequisites
- SSH into PiCorePlayer
- see PiCorePlayer How-To for SSH instructions
- Run commands from home directory

*Note: System will reboot after install and removal*

## Install
1) wget https://github.com/dynobot/TinyCore-Sound-Adjustments/raw/master/install.sh
2) sudo chmod 755 install.sh
3) sudo ./install.sh


## Remove 
1) wget https://github.com/dynobot/TinyCore-Sound-Adjustments/raw/master/remove.sh
2) sudo chmod 755 remove.sh
3) sudo ./remove.sh
