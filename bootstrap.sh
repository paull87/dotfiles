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
	--exclude "git.sh" \
	--exclude "macos.sh" \
	--exclude "php.sh" \
	--exclude "README.md" \
	--exclude "LICENSE-MIT.txt" \
	-avh --no-perms . ~;

# Configure macOS defaults
./macos.sh

# Install Homebrew formulae
./brew.sh
