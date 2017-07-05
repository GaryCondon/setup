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
