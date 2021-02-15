#!/bin/bash

# TODO-LIST
# - Create overclocking settings in /boot/config.txt
# - Create correct /boot/cmdline.txt settings
# - Update from DexBox`s Github Repository
# - Check current versions
# - Create Wallets
# - 
##########################################################################



#Set DexBox Variables
	source /$HOME/dexbox/dexbox-cypherpunk/variables/setvariables.source
	echo ""
	echo -e "${YELLOW}---------------------------------------------------------"
	echo -e " INSTALLING ALL APPLICATIONS & CONFIGURATIONS FOR DEXBOX"
	echo -e "--------------------------------------------------------- ${NC}"
	echo ""
	mkdir -p $HOME/dexbox-installs
	mkdir -p $HOME/decred
	mkdir -p $HOME/dcrdex
	mkdir -p $HOME/bitcoin
	mkdir -p $HOME/litecoin
	mkdir -p $HOME/dogecoin

#Set variables for updater
	source /$HOME/dexbox/dexbox-cypherpunk/variables/updater-vars.source

#Set variables for versions
	source /$HOME/dexbox/dexbox-cypherpunk/variables/version-vars.source
	echo ""


# Download all the DexBox crypto software
source /$HOME/dexbox/dexbox-cypherpunk/updater/download-dexbox-crypto.sh
grep -rl 'linux' ./ | xargs sed -i 's/linux/linux/g'





#################################################################
#################  INSTALL CRYPTO APPS  #########################
#################################################################


############################ Install DCRCLI with installation file
wait
if	[ ! -f "$DCRDIR/dcrd" ] && [ -f "/$HOME/dexbox-installs/$DCRCLIVERSION.tar.gz" ]

then	echo -e "${DARKGRAY}found DCRCLI installation file. extracting tar ball..."
	tar -zxf /$HOME/dexbox-installs/$DCRCLIVERSION.tar.gz -C $HOME/decred &
	echo ""	
        echo -e "${YELLOW}DCRCLI is now installing... ${NC}"
	echo ""
else
	echo "DCRCLI is already installed."
fi


############################ Install DCRDEX with installation file
if      [ ! -f "$DCRDEXDIR/dexc" ] && [ -f "/$HOME/dexbox-installs/$DCRDEXVERSION.tar.gz" ]

then    echo -e "${DARKGRAY}found DCRDEX installation file. extracting tar ball..."
        tar -zxf /$HOME/dexbox-installs/$DCRDEXVERSION.tar.gz -C $HOME/dcrdex &
        echo "" 
        echo -e "${YELLOW}DCRDEX is now installing... ${NC}"
        echo ""
else
        echo "DCRDEX is already installed."
fi

############################ Install Bitcoind with installation file
if      [ ! -f "$BTCDIR/bitcoind" ] && [ -f "/$HOME/dexbox-installs/$BTCVERSION.tar.gz" ]

then    echo -e "${DARKGRAY}found Bitcoind installation file. extracting tar ball..."
        tar -zxf /$HOME/dexbox-installs/$BTCVERSION.tar.gz -C $HOME/bitcoin &
        echo "" 
        echo -e "${YELLOW}Bitcoind is now installing... ${NC}"
        echo ""
else
        echo "Bitcoind is already installed."
fi


############################ Install Litecoind with installation file
if      [ ! -f "$LTCDIR/litecoind" ] && [ -f "/$HOME/dexbox-installs/$LTCVERSION.tar.gz" ]

then    echo -e "${DARKGRAY}found Litecoind installation file. extracting tar ball..."
        tar -zxf /$HOME/dexbox-installs/$LTCVERSION.tar.gz -C $HOME/litecoin &
        echo "" 
        echo -e "${YELLOW}Litecoind is now installing... ${NC}"
        echo ""
else
        echo "Litecoind is already installed."
fi


############################ Install Dogecoind with installation file
if      [ ! -f "$DOGECOINDIR/dogecoind" ] && [ -f "/$HOME/dexbox-installs/$DOGEVERSION.tar.gz" ]

then    echo -e "${DARKGRAY}found Dogecoind installation file. extracting tar ball..."
        tar -zxf /$HOME/dexbox-installs/$DOGEVERSION.tar.gz -C $HOME/dogecoin &
        echo "" 
        echo -e "${YELLOW}Dogecoind is now installing... ${NC}"
        echo ""
else
        echo "Dogecoind is already installed."
fi

#######################################################################
################ INSTALL CRYPTO CONFIG FILES ####################
#######################################################################

source $HOME/dexbox/dexbox-cypherpunk/updater/configure-crypto.sh

#######################################################################
################ INSTALL RASPBERRY PI CONFIG FILES ####################
#######################################################################

### source "/$HOME/dexbox/dexbox-cypherpunk/rpi-config/install-rpi-config.sh" 



############################ Waiting for installation to finish


echo ""
echo -e "${YELLOW}installing...  ${NC}"
sleep 1
echo "..."
sleep 1
echo "....."
sleep 1
echo "........."

wait
echo ""
echo -e "${GREEN}---------------------------------------------------------"
echo -e "DexBox Installation is finished. Enjoy."
echo -e "---------------------------------------------------------${NC}"
