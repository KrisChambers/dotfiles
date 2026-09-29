# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kris/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

# Starship Prompt
eval "$(starship init zsh)"

# User Config
export EDITOR=nvim
export VISUAL=nvim

