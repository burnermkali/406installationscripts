#!/bin/bash
# Navigate to the local directory where the files are stored
cd /path/to/local/directory

# Initialize the local directory as a Git repository
git init

# Add the files to the repository
git add .

# Commit the files to the repository
git commit -m "Initial commit"

# Add the URL of the GitHub repository as a remote
git remote add origin https://github.com/<YOUR_USERNAME>/<YOUR_REPOSITORY>.git

# Replace <YOUR_USERNAME> with your GitHub username and <YOUR_REPOSITORY> with the name of your repository

# Push the files to the repository
git push -u origin master


