#!/bin/bash

# Runs litecoind daemon.


if pgrep -x "litecoind" >/dev/null

then
	echo "litecoind already running."
else
	tmux a -t "DexBox Daemons"
        tmux new-window -t "DexBox Daemons" -c /home/pi/litecoin/bin -n litecoind
        tmux select-window -t "litecoind"
        tmux send-keys './litecoind' C-m

#	setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

fi
  
