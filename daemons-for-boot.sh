#!/bin/bash

# Bash script that is in rc.local



/home/pi/dexbox-files/dcrcli.sh & sleep 0 && xdotool search --onlyvisible --name "dcrcli" windowminimize &

/home/pi/dexbox-files/bitcoind.sh & sleep 0 && xdotool search --onlyvisible --name "bitcoind" windowminimize &

/home/pi/dexbox-files/litecoind.sh & sleep 0 && xdotool search --onlyvisible --name "litecoind" windowminimize &

/home/pi/dexbox-files/monerod.sh & sleep 0 && xdotool search --onlyvisible --name "monerod" windowminimize &

sudo wondershaper wlan0 10000 200 &

setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &
