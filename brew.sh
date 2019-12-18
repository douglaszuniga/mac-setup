#!/usr/bin/env bash

# install command-line tools using Homebrew

# ask for adm pass upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until the script has finshed
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew, install it if it doesn't exist
if test ! $(which brew); then
	echo "Installing Homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew cask upgrade

brew tap caskroom/fonts
brew tap homebrew/services

brew install git git-flow-avh git-extras lazygit
brew install ack awscli ctags erlang fzf gdbm gettext gnu-getopt gradle jpeg libevent libpng libtiff maven ncurses nvm openssl pcre pcre2 pipenv pkg-config python rabbitmq readline reattach-to-user-namespace telnet the_silver_searcher tmux tomcat tomcat@7 tree wxmac xz 

brew install tree 
brew install zsh zsh-syntax-highlighting zsh-completions

brew cask install 1password alfred apache-directory-studio appcleaner cheatsheet datagrip docker flux font-fira-code font-indie-flower font-source-code-pro grammarly intellij-idea iterm2 jetbrains-toolbox licecap macvim postman robo-3t skype slack spectacle spotify sublime-text the-unarchiver tomighty vanilla visual-studio-code whatsapp zoom  

brew cask install macdown google-chrome firefox 
brew cask install lulu
brew cask install vip-access

brew cleanup 
