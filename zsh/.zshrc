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
eval "$(direnv hook zsh)"

# User Config
export EDITOR=nvim
export VISUAL=nvim

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec niri-session
fi

# Zsh Vim mode emulates old school vi

# Fix the vim bindings
bindkey -v '^?' backward-delete-char    # Backspace works on all characters
bindkey -v '^[[3~' delete-char    # Fix delete character
bindkey -v '^W' backward-kill-word # Ctrl-W should kill the whole world in insert mode

# Make switching modes faster when hitting ESC
export KEYTIMEOUT=1

export PATH="/home/kris/.local/bin:$PATH"
