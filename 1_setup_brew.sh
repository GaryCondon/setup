#!/usr/bin/env bash

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew doctor

# brew install mas # mac app store cli
# mas install 497799835 # Xcode ... only works for latest version

brew upgrade
brew cleanup
