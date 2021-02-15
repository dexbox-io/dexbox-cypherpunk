#!/bin/bash

source $HOME/dexbox/dexbox-cypherpunk/variables/setvariables.source

echo "Creating default crypto config directories..."
mkdir -p $HOME/.bitcoin
mkdir -p $HOME/.litecoin
mkdir -p $HOME/.dogecoin
mkdir -p $HOME/.dcrd
mkdir -p $HOME/.dcrwallet
mkdir -p $HOME/.dcrctl
mkdir -p $HOME/.dexc


echo "Copying DexBox crypto config files to crypto config directories..."
###### COPY DEXBOX`s CRYPTO CONFIG FILES TO CONFIG DIRECTORIES.

cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/bitcoin.conf $BTCCONFPATH
cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/litecoin.conf $LTCCONFPATH
cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/dogecoin.conf $DOGECONFPATH
cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/dcrd.conf $DCRDCONFPATH
cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/dcrwallet.conf $DCRWALLETCONFPATH
cp --backup=numbered $HOME/dexbox/dexbox-cypherpunk/crypto-apps/config-files/dcrctl.conf $DCRCTLCONFPATH

echo "Creating unique rpc-usernames and rpc-passwords for all cryptos..."
###### Create random rpcuser and rpcpassword parameters and set them to all the crypto config files, to make them compatible with DCRDEX.
RPCUSER=$(sed "s/[^a-zA-Z0-9]//g" <<< $(cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%*()-+' | fold -w 64 | head -n 1))
RPCPASS=$(sed "s/[^a-zA-Z0-9]//g" <<< $(cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%*()-+' | fold -w 64 | head -n 1))

sed -i "/rpcuser=/ c rpcuser=${RPCUSER}" $BTCCONFPATH
sed -i "/rpcpassword=/ c rpcpassword=${RPCPASS}" $BTCCONFPATH
sed -i "/rpcuser=/ c rpcuser=${RPCUSER}" $LTCCONFPATH
sed -i "/rpcpassword=/ c rpcpassword=${RPCPASS}" $LTCCONFPATH
sed -i "/rpcuser=/ c rpcuser=${RPCUSER}" $DOGECONFPATH
sed -i "/rpcpassword=/ c rpcpassword=${RPCPASS}" $DOGECONFPATH
sed -i "/rpcuser=/ c rpcuser=${RPCUSER}" $DCRDCONFPATH
sed -i "/rpcpass=/ c rpcpass=${RPCPASS}" $DCRDCONFPATH
sed -i "/username=/ c username=${RPCUSER}" $DCRWALLETCONFPATH
sed -i "/password=/ c password=${RPCPASS}" $DCRWALLETCONFPATH
sed -i "/rpcuser=/ c rpcuser=${RPCUSER}" $DCRCTLCONFPATH
sed -i "/rpcpass=/ c rpcpass=${RPCPASS}" $DCRCTLCONFPATH

RPCUSER="NONE"
RPCPASS="NONE"

echo ""
echo -e "${GREEN}essential crypto configurations are done.${NC}"
echo ""
