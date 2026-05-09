# Editor
export EDITOR=helix
export VISUAL=helix
export SUDO_EDITOR=helix

# Vi mode (overrides Omarchy if needed)
set -o vi

# Paths
source ~/.config/bash/paths

# Aliases
[ -f ~/.config/bash/aliases ] && source ~/.config/bash/aliases

# Tools
source ~/.config/bash/tools

# Zellij inherits kitty-specific env from the terminal, which makes Yazi
# take the kitty detection path and hit the terminal-response timeout.
zellij() {
    env \
        -u KITTY_INSTALLATION_DIR \
        -u KITTY_PID \
        -u KITTY_PUBLIC_KEY \
        -u KITTY_WINDOW_ID \
        -u TERMINFO \
        TERM=xterm-256color \
        zellij "$@"
}

yazi() {
    if [ -n "${ZELLIJ_SESSION_NAME-}" ] || [ -n "${ZELLIJ-}" ]; then
        YAZI_CONFIG_HOME="$HOME/.config/yazi-zellij" command yazi "$@"
        return
    fi

    command yazi "$@"
}
