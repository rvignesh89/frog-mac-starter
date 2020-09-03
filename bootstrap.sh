#!/bin/bash

# Exit on error
set -e 

# Install Homebrew
./homebrew.sh

# Setup oh-my-zsh shell
./oh-my-zsh.sh

# Mac apps
./app-store.sh

# Install nvm
./nvm.sh

# AWS CLI
./aws-cli.sh

# Updates
./update.sh
