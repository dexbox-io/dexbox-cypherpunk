#!/bin/bash


if test -f "$HOME/.dcrwallet/mainnet/wallet.db"; 
then
    zenity --info --width=400  --text="Found Existing Wallet in .dcrwallet. Remember to wait for the blockchains to sync before you trade!"

else

if 	zenity --question --text="No wallet detected. You will need to create a wallet to use DCRDEX.\n\n Do you already have a Decred Wallet Seed, or do you want to create a new wallet with a new seed to use for DCRDEX?" --width=400 --ok-label="Enter my seed" --cancel-label="Create new seed"

then
	USERSEED=$(zenity --entry --text="Enter your Decred Seed.") &&
	zenity --question --text="Is this the correct seed? \n\n  $USERSEED" &&
	USERPASS=$(zenity --password --text="Enter your desired passphrase to access your wallet locally on this device.")
	/home/pi/dexbox-files/dcrcli.sh
	tmux select-window -t session:2
	tmux send-keys './dcrwallet --create' C-m
	tmux send-keys '$USERPASS' C-m 
	tmux send-keys '$USERPASS' C-m 
	tmux send-keys 'n' C-m 
	tmux send-keys 'y' C-m 
	tmux send-keys '$USERSEED' C-m 
	tmux send-keys '' C-m 
	USERSEED=""
	USERPASS=""
else
	zenity --notification --text="Creating new seed" 
fi
  fi


#
#
#
#
#    my_variable=$(zenity --entry --text="What's my variable:")
#