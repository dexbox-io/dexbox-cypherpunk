#!/bin/bash

# Runs monerod daemon.


if pgrep -x "monerod" >/dev/null

then
	echo "$SERVICE already running."
else
	/home/pi/monero/monerod &

	setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

fi
  