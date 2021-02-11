#!/bin/bash

# Runs BTC Daemon & Qt Wallet.
SERVICE=bitcoind

if pgrep -x "bitcoind" >/dev/null

then
	/home/pi/bitcoin/bin/bitcoin-cli stop && sleep 1
else
echo ""
fi


if pgrep -x "bitcoin-qt" >/dev/null

then
	echo "$SERVICE already running."
else
	/home/pi/bitcoin/bin/bitcoin-qt &

	setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

fi
  
