#!/bin/bash
# Update the package manager's list of available packages
sudo apt-get update

# Install the Java Development Kit (JDK)
sudo apt-get install openjdk-11-jdk

# Add the Jenkins repository to the package manager's list of sources
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package manager's list of available packages again
sudo apt-get update

# Install Jenkins
sudo apt-get install jenkins

# Start the Jenkins service
sudo systemctl start jenkins

# Enable the Jenkins service to start at boot time
sudo systemctl enable jenkins
