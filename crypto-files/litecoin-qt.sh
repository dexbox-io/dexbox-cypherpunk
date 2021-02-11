#!/bin/bash

# Runs BTC Daemon & Qt Wallet.
SERVICE=bitcoind

if pgrep -x "litecoind" >/dev/null

then
	echo "litecoind running... need to close before running litecoin-qt"
	/home/pi/litecoin/bin/litecoin-cli stop && sleep 1
else
echo "litecoind not running... starting litecoin-qt"
fi


if pgrep -x "litecoin-qt" >/dev/null

then
	echo "litecoin-qt already running... not starting new instance"
else
	echo "litecoind and litecoin-qt not running... starting litecoin-qt..."
	/home/pi/litecoin/bin/litecoin-qt &

	setsid /home/pi/Desktop/rundaemons.sh >/home/pi/daemons.logs 2>&1 < /dev/null &

fi
  
