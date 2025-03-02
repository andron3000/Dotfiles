# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set Neovim as the default editor
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

# Start keychain and add default SSH keys (suppress output)
eval $(keychain --eval --agents ssh 2>/dev/null) &>/dev/null

# Check if default key is already added
if ! ssh-add -l &>/dev/null; then
    if [ -f "$HOME/.ssh/personal" ]; then
       ssh-add "$HOME/.ssh/personal" &>/dev/null
    else
        echo "Default SSH key not found: $HOME/.ssh/personal"
    fi
fi


