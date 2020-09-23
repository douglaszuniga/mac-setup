#!/usr/bin/env bash


# ask for adm pass upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until the script has finshed
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew, install it if it doesn't exist
if test ! $(which brew); then
        echo "Installing Homebrew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install SDK-MAN
curl -s "https://get.sdkman.io" | bash
# giving that we stay in the same terminal
source "$HOME/.sdkman/bin/sdkman-init.sh"
# testing that SDK-MAN was installed
sdk version

# installing JDK7
# sdk install java 7.0.181-zulu
# installing JDK8
# sdk install java 8.0.201-oracle
# installing JDK9
# sdk install java 9.0.4-open
# installing JDK11
# sdk install java 11.0.2-open
# installing JDK12
# sdk install java 12.0.0-open

# set JDK8 as default
# sdk default java 8.0.201-oracle

# installing lastest version of scala
# sdk install scala
