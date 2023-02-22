#!/bin/bash
sudo apt update
sudo apt-get upgrade -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client
flatpak run com.spotify.Client
flatpak list
