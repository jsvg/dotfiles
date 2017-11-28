#!/usr/bin/env bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Install Bash 4.
brew install bash
brew install bash-completion
brew install homebrew/completions/brew-cask-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install node and yarn package manager
brew install node
brew install yarn

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp
brew install git
brew install wget
brew install the_silver_searcher
brew install python3

# Install apps
brew cask install iterm2
brew cask install firefox
brew cask install spotify
brew cask install visual-studio-code
brew cask install gitkraken
brew cask install hermes
brew cask install vlc
brew cask install caffeine

# Remove outdated versions from the cellar.
brew cleanup
