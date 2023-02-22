#!/bin/bash
#githubdesktop
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
# Uncomment below line if you have not installed gdebi-core before
sudo apt-get install gdebi-core
sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb
sudo chmod +x GitHubDesktop-linux-3.1.1-linux1.deb
