#!/bin/bash

if pgrep -x "dexc" >/dev/null 
then
	echo "dexc already running... not starting it again."
	#zenity --info --width=400  --text="DCRDEX is already  running."

else

sleep 5

if ping -q -c 1 -W 1 "dex.decred.org" -p 7232  >/dev/null; then
  echo "IPv4 is up.  Starting dexc..."


	#zenity --info --width=400  --text="Starting dexc"
	tmux a -t "DexBox Daemons"
	tmux new-window -t "DexBox Daemons" -c /home/pi/decred/dexc-linux-arm-v0.1.4 -n DCRDEX
	tmux select-window -t "DCRDEX"
	tmux send-keys './dexc' C-m

else
echo "dex.decred.org is not answering... waiting 3 seconds before retrying to connect..."
sleep 5

if ping -q -c 1 -W 1 dex.decred.org:7232  >/dev/null; then

#zenity --info --width=400  --text="Starting dexc"
        tmux a -t "DexBox Daemons"
        tmux new-window -t "DexBox Daemons" -c /home/pi/decred/dexc-linux-arm-v0.1.4 -n DCRDEX
        tmux select-window -t "DCRDEX"
        tmux send-keys './dexc' C-m
else
notify-send "DCRDEX Connection Error"  "cannot connect to dex.decred.org - are you connected to the internet?"
fi

fi

fi

