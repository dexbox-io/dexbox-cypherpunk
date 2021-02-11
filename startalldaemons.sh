#!/bin/bash

# Bash script that is in rc.local

/home/pi/dexbox-files/setvariables.sh


/home/pi/dexbox-files/init-tmux.sh & sleep 1



/home/pi/dexbox-files/bitcoind.sh & sleep 2 # && xdotool search --onlyvisible --name "bitcoind" windowminimize &

/home/pi/dexbox-files/litecoind.sh & sleep 2 # && xdotool search --onlyvisible --name "litecoind" windowminimize &

/home/pi/dexbox-files/dcrcli.sh &  sleep 2  # && xdotool search --onlyvisible --name "dcrcli" windowminimize &

/home/pi/dexbox-files/dexc.sh 

#/home/pi/dexbox-files/monerod.sh & sleep 0 && xdotool search --onlyvisible --name "monerod" windowminimize &

sudo wondershaper wlan0 8000 100 &
sudo wondershaper eth0 8000 100 &

#setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &
