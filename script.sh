#!/bin/sh

# Homebrew installation script for OSX v12.1 and later
# Instructions: Save this script somewhere in your disk (e.g. inside the Documents folder)
# Using your terminal of choice, navigate to the folder where you previously saved your copy of this script and type: `chmod +x ./script.sh`, followed by the return key
# Type `./script.sh`, followed by the return key

cat << "EOF"
 _   _                      _                       
| | | |                    | |                      
| |_| | ___  _ __ ___   ___| |__  _ __ _____      __
|  _  |/ _ \| '_ ` _ \ / _ \ '_ \| '__/ _ \ \ /\ / /
| | | | (_) | | | | | |  __/ |_) | | |  __/\ V  V / 
\_| |_/\___/|_| |_| |_|\___|_.__/|_|  \___| \_/\_/  
                                                                                                     
EOF

echo "Install Homebrew via Git remote mirroring"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install brew cask via brew tap (third-party core repository)"
brew tap homebrew/cask

#####################
## Developer Tools ##
#####################
echo "Installing developer tools"
brew install --cask visual-studio-code
brew install --cask vivaldi
brew install --cask figma
brew install docker
brew install git

#####################
##  General Tools  ##
#####################
echo "Installing general tools"
brew install --cask windscribe
brew install --cask whatsapp
brew install --cask raycast


