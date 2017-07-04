#!/usr/bin/env bash

# Install Homebew if not present
if test ! $(which brew); then
  echo "Installing homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure Homebrew is updated and ready to go
brew update
brew doctor

# Upgrade all packages
brew upgrade

# Remove outdated versions from the cellar
brew cleanup
