#!/usr/bin/env bash

# configure dock

# remove all apps from dock
defaults delete com.apple.dock persistent-apps

# remove all folders from dock
defaults delete com.apple.dock persistent-others

# add applications folder to dock (displayas folder, showas list)
defaults write com.apple.dock persistent-others -array-add '<dict><key>tile-data</key><dict><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>'

# automatically hide and reveal dock
defaults write com.apple.dock autohide -bool true

# only show running apps in dock
# defaults write com.apple.dock static-only -bool TRUE

# reset dock to default
# defaults delete com.apple.dock

# restart dock
killall Dock &> /dev/null

