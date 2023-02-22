#!/bin/bash
# A script for updating apt-based Linux distros
# ... put it in /usr/local/bin or anywhere in your $PATH

# Function to run
function run_update {
    printf "\\n\e[1;31m%s\e[0m\\n" "apt update"
    apt update

    printf "\\n\e[1;31m%s\e[0m\\n" "apt dist-upgrade"
    apt dist-upgrade

    printf "\\n\e[1;31m%s\e[0m\\n" "apt autoremove"
    apt autoremove

    printf "\\n\e[1;31m%s\e[0m\\n" "dpkg -l | grep "^rc" | awk '{print \$2}' | xargs -r dpkg --purge"
    dpkg -l | grep "^rc" | awk '{print $2}' | xargs -r dpkg --purge

    printf "\\n\e[1;31m%s\e[0m\\n" "exit"
}

# Execute as sudo
printf "\\n\e[1;31m%s\e[0m\\n" "sudo su"
FUNC=$(declare -f run_update)
sudo bash -c "$FUNC; run_update"
#update complete
reboot
