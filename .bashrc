# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"

fi

if [ -d $HOME/.cargo/bin ]; then
    PATH="$PATH:$HOME/.cargo/bin"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
#
# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# user additions
#
# NOTE: took from Nic!
# Use colorful versions of utilities
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'

export HISTSIZE=10000
export HISTFILESIZE=10000

set -o vi

export MANPAGER='nvim +Man!'
export FZF_DEFAULT_OPTS='--layout reverse --info inline-right'

eval "$(fzf --bash)"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
