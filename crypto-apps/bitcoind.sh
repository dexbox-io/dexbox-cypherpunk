#!/bin/bash

source  $HOME/dexbox/dexbox-cypherpunk/variables/setvariables.source

# Runs bitcoind daemon.


if pgrep -x "bitcoind" >/dev/null

then
	echo "bitcoind already running."
else
	tmux a -t "DexBox Daemons"
        tmux new-window -t "DexBox Daemons" -c $BTCDIR -n bitcoind
        tmux select-window -t "bitcoind"
        tmux send-keys './bitcoind' C-m

#	setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

fi
  
