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


echo "Copying DexBox`s crypto config files to crypto config directories..."
###### COPY DEXBOX`s CRYPTO CONFIG FILES TO CONFIG DIRECTORIES.

