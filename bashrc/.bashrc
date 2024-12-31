# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set Neovim as the default editor
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

# Uncomment the following line if you don't like systemctl's auto-paging feature:

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

# Start ssh-agent if not already running
if ! ps -ef | grep "ssh-agent" &>/dev/null; then
    echo Starting SSH Agent
    eval $(ssh-agent -s)
fi

# Add default SSH key if not already added
if ! ssh-add -l &>/dev/null; then
    echo Adding keys..
    if [ -f "~/.ssh/personal" ]; then
        ssh-add "~/.ssh/personal" &>/dev/null
    fi
fi
