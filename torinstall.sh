#!/bin/bash

# Update the package repository
sudo apt-get update

# Install the dependencies needed to add the Tor Browser repository
sudo apt-get install -y gnupg apt-transport-https

# Add the GPG key for the Tor Browser repository
gpg --keyserver pool.sks-keyservers.net --recv-keys 0x6AFEE6D49E92B601
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

# Add the Tor Browser repository to the list of repositories
echo "deb https://deb.torproject.org/torproject.org $(lsb_release -cs) main" > /etc/apt/sources.list.d/tor.list

# Update the package repository
sudo apt-get update

# Install the Tor Browser
sudo apt-get install tor
