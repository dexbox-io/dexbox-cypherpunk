b                                                                                                                                                                                     #!/bin/bash

### Runs DCR Daemons.

source /home/pi/dexbox-files/setvariables.source

if pgrep -x "dcrd" >/dev/null
then

if xdotool search --name "DCR CLI Wallet"
then
	echo "found DCR CLI Wallet window. no need to open a new tmux session."
else 
	echo "dcrd already running. Just opening tmux"
	lxterminal --command="tmux a" --title="DCR CLI Wallet"
fi	

else

if	pgrep "tmux" >/dev/null
then 	echo "tmux already running. Not starting tmux."

	
	echo "dcrd is not running. Starting dcrd and wallets..."

	tmux new-window -t "DexBox Daemons" -c "$DCRDIR" -n "DCR CLI"
	tmux send-keys './dcrctl' C-m
	tmux select-window -t "DCR CLI":0
	
		
	tmux split-window -h
	tmux select-window -t "DCR CLI":2
	tmux send-keys 'source /home/pi/dexbox-files/setvariables.source' C-m
	tmux send-keys 'cd $DCRDIR' C-m
	tmux send-keys './dcrwallet' C-m

	tmux split-window -v
	tmux send-keys 'source /home/pi/dexbox-files/setvariables.source' C-m
	tmux send-keys 'cd $DCRDIR' C-m
	tmux send-keys './dcrd' C-m
	tmux select-window -t "DCR CLI":3
	tmux select-pane -t 0
	 
	lxterminal --geometry=100x100 --command="tmux a" --title="DCR CLI Wallet"

else
echo "tmux not running. Starting tmux and running dcrcli."
/home/pi/dexbox-files/init-tmux.sh
/home/pi/dexbox-files/dcrcli.sh	

fi


fi
