#!/usr/bin/env bash

# backup directories
mkdir -p ~/migration/Library/"Application Support"/
mkdir -p ~/migration/Library/Preferences/
mkdir -p ~/migration/Library/Application Support/
mkdir -p ~/migration/rootLibrary/Preferences/SystemConfiguration/

cd ~/migration

# log current installs
brew leaves              > brew-list.txt    # all top-level brew installs
brew cask list           > cask-list.txt
npm list -g --depth=0    > npm-g-list.txt
yarn global list --depth=0 > yarn-g-list.txt

# application settings
cp -Rp ~/Library/"Application Support"/Spotify ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/GitKraken ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/Firefox ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/Hermes ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/Quicksilver ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/Code ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/iTerm ~/migration/Library/"Application Support"/
cp -Rp ~/Library/"Application Support"/iTerm2 ~/migration/Library/"Application Support"/

# all those fonts you've installed
cp -Rp ~/Library/Fonts ~/migration/Library/
# top level user settings
cp -Rp ~/Library/Preferences ~/migration/Library/Preferences/
# backup wifi
cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration/rootLibrary/Preferences/SystemConfiguration/
