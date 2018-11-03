#!/bin/sh

# Get dependencies
sudo apt-get install -y autoconf automake build-essential git libtool libgmp-dev libsqlite3-dev python python3 net-tools libsodium-dev

# For development or running tests, get additional dependencies:
sudo apt-get install -y asciidoc valgrind python3-pip

# Clone lightning
git clone https://github.com/Groestlcoin/lightning.git
cd lightning

# Configure Lightning
./configure

# Build lightning
make

# Running lightning
groestlcoind &
./lightningd/lightningd &
./cli/lightning-cli help
