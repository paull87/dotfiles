# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:${PATH}"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# Path to your oh-my-zsh installation.
export ZSH="/Users/paullucas/.oh-my-zsh"



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/.composer/vendor/bin:$HOME/.yarn/bin:$PATH

for file in ~/.{aliases,path}.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $(brew --prefix antigen)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle macos
antigen bundle git
antigen bundle docker
antigen bundle composer
antigen bundle yarn
antigen bundle command-not-found

# antigen theme vercel/zsh-theme
antigen theme romkatv/powerlevel10k

antigen apply


source $ZSH/oh-my-zsh.sh
source /Users/paullucas/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# source ~/powerlevel10k/powerlevel10k.zsh-theme

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

