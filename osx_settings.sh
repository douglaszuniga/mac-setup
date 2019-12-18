#!/usr/bin/env bash

sudo -v  

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# set the default path for screencaptures
mkdir -p /Users/dzuniga/screenshots/
defaults write com.apple.screencapture location /Users/dzuniga/screenshots/ && killall SystemUIServer

# reveal IP address, hostname, OS version, etc when clicking the clock
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo IPAddress

# Finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Mail: Copy email address as `foo@something.com` instead of `Foo Bar <foo@something.com>`
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false



      
