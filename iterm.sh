#!/usr/bin/env bash

sudo -v
# Check for Homebrew, install it if it doesn't exist
if test ! $(which brew); then
	echo "Installing Homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# installing iterm and zsh
brew cask install iterm2
brew install zsh 
brew install zsh-syntax-highlighting
brew install zsh-completions 

# PREZTO

# removing the zsh config file, just in case
rm -f ~/.zshrc

# installing prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git “${ZDOTDIR:-$HOME}/.zprezto”

# generating the configuration files
#setopt EXTENDED_GLOB
#for rcfile in “${ZDOTDIR:-$HOME}”/.zprezto/runcoms/^README.md(.N); do
# ln -s “$rcfile” “${ZDOTDIR:-$HOME}/.${rcfile:t}”
#done
#chsh -s $(which zsh)




