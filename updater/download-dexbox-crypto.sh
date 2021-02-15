#!/bin/bash

############################ Download DCRCLI if not installed and cant find installation file.

if [ ! -f "$DCRDIR/dcrd" ]
then
	echo "DCRCLI not installed. Searching for DCRCLI installation file..."


   if [ ! -f "$DCRDIR/dcrd" ] && [ ! -f "/$HOME/dexbox-installs/$DCRCLIVERSION.tar.gz" ]
   then
	echo -e "${YELLOW} Downloading newest DCRCLI version to $HOME/dexbox-installs ${NC}"
	wget -q --show-progress --progress=bar $DCRCLIURL -O $HOME/dexbox-installs/$DCRCLIVERSION.tar.gz &
        wget -q --show-progress --progress=bar $DCRCLISIGURL -O $HOME/dexbox-installs/$DCRCLIVERSION-manifest.txt.asc &
   else 
	echo "DCRCLI installation file found."
   fi
fi


############################ Download DCRDEX if not installed and cant find installation file.


if [ ! -f "$DCRDEXDIR/dexc" ]
then
        echo "DCRDEX not installed. Searching for DCRDEX installation file..."


   if [ ! -f "$DCRDEXDIR/dexc" ] && [ ! -f "/$HOME/dexbox-installs/$DCRDEXVERSION.tar.gz" ]
   then
        echo -e "${YELLOW} Downloading newest DCRDEX version to $HOME/dexbox-installs ${NC}"
        wget -q --show-progress --progress=bar $DCRDEXURL -O $HOME/dexbox-installs/$DCRDEXVERSION.tar.gz &
        wget -q --show-progress --progress=bar $DCRDEXSIGURL -O $HOME/dexbox-installs/$DCRDEXVERSION-manifest.txt.asc &
   else 
        echo "DCRDEX installation file found."
   fi
fi




############################ Download Bitcoind if not installed and cant find installation file.


if [ ! -f "$BTCDIR/bitcoind" ]
then
        echo "Bitcoind not installed. Searching for Bitcoind installation file..."


   if [ ! -f "$BTCDIR/bitcoind" ] && [ ! -f "/$HOME/dexbox-installs/$BTCVERSION.tar.gz" ]
   then
        echo -e "${YELLOW} Downloading newest Bitcoind version to $HOME/dexbox-installs ${NC}"
        wget -q --show-progress --progress=bar $BITCOINDURL -O $HOME/dexbox-installs/$BTCVERSION.tar.gz &
        wget -q --show-progress --progress=bar $BITCOINDSIGURL -O $HOME/dexbox-installs/$BTCVERSION.asc &
   else 
        echo "Bitcoind installation file found."
   fi
fi


############################ Download Litecoind if not installed and cant find installation file.


if [ ! -f "$LTCDIR/litecoind" ]
then
        echo "Litecoind not installed. Searching for Litecoind installation file..."


   if [ ! -f "$LTCDIR/litecoind" ] && [ ! -f "/$HOME/dexbox-installs/$LTCVERSION.tar.gz" ]
   then
        echo -e "${YELLOW} Downloading newest Litecoind version to $HOME/dexbox-installs ${NC}"
        wget -q --show-progress --progress=bar $LITECOINDURL -O $HOME/dexbox-installs/$LTCVERSION.tar.gz &
        wget -q --show-progress --progress=bar $LITECOINDSIGURL -O $HOME/dexbox-installs/$LTCVERSION.asc &
   else 
        echo "Litecoind installation file found."
   fi
fi


############################ Download Dogecoind if not installed and cant find installation file.


if [ ! -f "$DOGECOINDIR/dogecoind" ]
then
        echo "Dogecoind not installed. Searching for Dogecoind installation file..."


   if [ ! -f "$DOGECOINDIR/dogecoind" ] && [ ! -f "/$HOME/dexbox-installs/$DOGEVERSION.tar.gz" ]
   then
        echo -e "${YELLOW} Downloading newest Dogecoind version to $HOME/dexbox-installs ${NC}"
        wget -q --show-progress --progress=bar $DOGECOINURL -O $HOME/dexbox-installs/$DOGEVERSION.tar.gz &
   else 
        echo "Dogecoind installation file found."
   fi
fi

