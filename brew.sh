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

#brew cask upgrade

#brew untap caskroom/fonts
brew tap homebrew/cask-fonts
brew tap homebrew/services

brew install git git-flow-avh
brew install git-extras
brew install lazygit
brew install ack
#brew install awscli
brew install ctags 
brew install erlang
brew install fzf
brew install bat
brew install fd
brew install z
brew install gdbm
brew install gettext
brew install gnu-getopt
brew install gradle
brew install jpeg
brew install libevent
brew install libpng
brew install libtiff
brew install maven
brew install ncurses
brew install nvm
brew install openssl
brew install pcre
brew install pcre2
brew install pipenv
brew install pkg-config
brew install python
#brew install rabbitmq
brew install readline
brew install reattach-to-user-namespace
brew install telnet
brew install the_silver_searcher
brew install tmux
brew install tomcat
brew install tomcat@7
brew install tree
brew install wxmac
brew install xz 

#brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-completions

#brew cask install 1password
brew cask install alfred
#brew cask install apache-directory-studio
brew cask install appcleaner
brew cask install cheatsheet
#brew cask install datagrip
brew cask install docker
brew cask install flux
brew cask install font-fira-code
brew cask install font-indie-flower
brew cask install font-source-code-pro
#brew cask install grammarly
#brew cask install intellij-idea
#brew cask install iterm2
brew cask install jetbrains-toolbox
brew cask install licecap
brew cask install macvim
brew cask install postman
#brew cask install robo-3t
#brew cask install skype
#brew cask install slack
brew cask install rectangle
#brew cask install spotify
#brew cask install sublime-text
brew cask install the-unarchiver
brew cask install tomighty
brew cask install vanilla
brew cask install visual-studio-code
#brew cask install whatsapp
#brew cask install zoom  

brew cask install macdown
#brew cask install google-chrome
brew cask install firefox 
brew cask install lulu
#brew cask install vip-access

brew cleanup 
