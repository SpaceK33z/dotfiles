#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install homebrew packages
brew install coreutils screen wget zsh rsync make git most gcc pwgen htop-osx hub python3 ruby
brew install ack android-sdk composer lua mercurial nvm rename trash unrar watchman
brew install gnu-sed gnu-tar findutils gnutls --with-default-names
brew install vim --with-override-system-vi
