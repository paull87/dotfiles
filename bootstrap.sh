#!/usr/bin/env sh

cd "$(dirname "$0")";

git pull origin master;

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

curl https://raw.githubusercontent.com/zeit/zeit.zsh-theme/master/zeit.zsh-theme -Lo ~/.oh-my-zsh/custom/themes/zeit.zsh-theme

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
