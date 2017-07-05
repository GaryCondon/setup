#!/usr/bin/env bash

# install mysides to remove items from sidebar
# git clone https://github.com/mosen/mysides.git
# ./mysides/make dmg # must mount dmg & run pkg to install to /usr/local/bin

mysides remove all # clears sidebar except Shared and Tags

# this will hide Shared servers
# defaults write ~/Library/Preferences/com.apple.finder SidebarSharedSectionDisclosedState -bool false

# I can't figure out how to automate the hiding of Tags

mysides add Home file:///Users/$USER
mysides add Documents file:///Users/$USER/Documents
mysides add Downloads file:///Users/$USER/Downloads
mysides add Dropbox file:///Users/$USER/Dropbox

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Always show scrollbars ... DOES THIS WORK?
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable Notification Center and remove the menu bar icon
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Set Home as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
# defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

killall Finder &> /dev/null

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

# disable dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# don’t show dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# don’t rearrange spaces by most recent use
defaults write com.apple.dock mru-spaces -bool false

# set bottom left hot corner to activate screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# require password to wake from screen saver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# restart dock
killall Dock &> /dev/null
