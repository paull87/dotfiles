#!/usr/bin/env bash

# Shortcuts
alias d="cd ~/Dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias s="cd ~/Superscript"

# Develop
alias art="php artisan"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; composer global update'
