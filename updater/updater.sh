#!/bin/bash

# TODO-LIST
# - Create overclocking settings in /boot/config.txt
# - Create correct /boot/cmdline.txt settings
# - Update from DexBox`s Github Repository
# - Check current versions
# - Create Wallets
# - 
#

source updater-vars.sh

FILE=updater.sh

if 	test -f "$FILE"

then
	echo "$FILE exists"
else
	echo "$FILE does not exist"
fi
