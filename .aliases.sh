#!/usr/bin/env bash

# Shortcuts
alias d="cd ~/Dev"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias cdr="cd ~/source/repos/"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias reload='source ~/.zshrc'

# Develop
alias gs='git status'
alias gcmp='gcm; git pull'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'
