#!/bin/bash

# TODO-LIST
# - Create overclocking settings in /boot/config.txt
# - Create correct /boot/cmdline.txt settings
# - Update from DexBox`s Github Repository
# - Check current versions
# - Create Wallets
# - 
#

# Links to crypto binaries from official releases.
DCRCLIURL="https://github.com/decred/decred-binaries/releases/download/v1.6.0/decred-linux-arm64-v1.6.0.tar.gz"
export DCRCLIURL
echo "DCRCLI URL variable set: $DCRCLIURL"

DCRCLISIGURL="https://github.com/decred/decred-binaries/releases/download/v1.6.0/decred-v1.6.0-manifest.txt.asc"
export DCRCLISIGURL
echo "DCRCLI Signature URL variable set: $DCRCLISIGURL"

DCRDEXURL="https://github.com/decred/decred-binaries/releases/download/v1.6.0/dexc-linux-arm64-v0.1.4.tar.gz"
export DCRDEXURL
echo "DCRDEX URL variable set: $DCRDEXURL"

DCRDEXSIGURL="https://github.com/decred/decred-binaries/releases/download/v1.6.0/dexc-v0.1.4-manifest.txt.asc"
export DCRDEXSIGURL
echo "DCRDEX Signature URL variable set: $DCRDEXSIGURL"

BITCOINDURL="https://bitcoincore.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-arm-linux-gnueabihf.tar.gz"
export BITCOINDURL
echo "Bitcoind URL variable set: $BITCOINDURL"

BITCOINDSIGURL="https://bitcoincore.org/bin/bitcoin-core-0.21.0/SHA256SUMS.asc"
export BITCOINDSIGURL
echo "Bitcoind Signature URL variable set: $BITCOINDSIGURL"

LITECOINDURL="https://download.litecoin.org/litecoin-0.18.1/linux/litecoin-0.18.1-arm-linux-gnueabihf.tar.gz"
export LITECOINDURL
echo "Litecoind URL variable set: $LITECOINDURL"

LITECOINDSIGURL="https://download.litecoin.org/litecoin-0.18.1/linux/litecoin-0.18.1-arm-linux-gnueabihf.tar.gz.asc"
export LITECOINDSIGURL
echo "Litecoind Signature URL variable set: $LITECOINDSIGURL"

DOGECOINURL="https://github.com/dogecoin/dogecoin/releases/download/v1.14.2/dogecoin-1.14.2-arm-linux-gnueabihf.tar.gz"
export DOGECOINURL
echo "DogeCoin URL variable set: $DOGECOINURL"


