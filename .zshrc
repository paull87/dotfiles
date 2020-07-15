# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.composer/vendor/bin:$HOME/.yarn/bin:$PATH

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle osx
antigen bundle git
antigen bundle composer
antigen bundle laravel
antigen bundle yarn
antigen bundle command-not-found

antigen theme vercel/zsh-theme

antigen apply
