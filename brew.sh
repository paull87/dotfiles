#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Install from Brewfile
brew bundle

# Remove outdated versions from the cellar.
brew cleanup
