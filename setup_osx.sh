#!/usr/bin/env bash

# reset dock to default
# defaults delete com.apple.dock

# remove all apps from dock
defaults delete com.apple.dock persistent-apps

# only show running apps in dock
# defaults write com.apple.dock static-only -bool TRUE

# remove all folders from dock
defaults delete com.apple.dock persistent-others

# add applications folder to dock (displayas folder, showas list)
defaults write com.apple.dock persistent-others -array-add '<dict><key>tile-data</key><dict><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>'

# automatically hide and reveal dock
defaults write com.apple.dock autohide -bool true

# remove autohide delay
defaults write com.apple.dock autohide-delay -float 0

# minimize windows into application icons
defaults write com.apple.dock minimize-to-application -bool true

# don’t show dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# don’t rearrange spaces by most recent use
defaults write com.apple.dock mru-spaces -bool false

# set bottom left hot corner to activate screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# restart dock
killall Dock &> /dev/null
