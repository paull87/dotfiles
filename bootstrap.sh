#!/usr/bin/env sh

# Install command line tools
xcode-select --install

cd "$(dirname "$0")";

git pull origin master;

# Install dotfiles
rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude "bootstrap.sh" \
	--exclude "brew.sh" \
	--exclude ".macos" \
	--exclude "README.md" \
	--exclude "LICENSE-MIT.txt" \
	-avh --no-perms . ~;

# Configure macOS defaults
# ./.macos

# Install Homebrew formulae
./brew.sh
