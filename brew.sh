#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Install from Brewfile
brew bundle

# Remove outdated versions from the cellar.
brew cleanup
