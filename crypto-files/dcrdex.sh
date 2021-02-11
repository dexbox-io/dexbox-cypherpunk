#!/bin/bash

# Runs DCRDEX, bitcoind and dcrcli daemons and opens DCRDEX in the browser

if pgrep -x "dexc" >/dev/null 
then
	echo "dexc already running... not starting it again."
	#zenity --info --width=400  --text="DCRDEX is already  running."

else

	#zenity --info --width=400  --text="Starting dexc"
	echo "starting dexc..."
	tmux new-window -c /home/pi/decred/dexc-linux-arm-v0.1.3 -n DCRDEX-Daemon &
	tmux send-keys './dexc' C-m &
fi

#STARTING bitcoind
if pgrep -x "bitcoind" >/dev/null 
then
        echo "bitcoind already running... not starting it again." &
        #zenity --info --width=400  --text="DCRDEX is already running."
 
else    

	/home/pi/bitcoin/bin/bitcoind &
fi


#STARTING dcrd & dcrwallet using dcrcli.sh
if pgrep -x "dcrd" >/dev/null 
then

echo "dcrd already started..."
#zenity --info --width=400  --text="dcrd already started..."

else
	/home/pi/dexbox-files/dcrcli.sh & sleep 0 & xdotool search --name "DCR CLI Wallet" windowminimize &	
fi


#Starting browser with DCRDEX.
chromium-browser --start-fullscreen --app=http://127.0.0.1:5758/ &
sleep 3
/home/pi/dexbox-files/walletcheck.sh &

#	setsid /home/pi/dexbox-files/dcrdex.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

