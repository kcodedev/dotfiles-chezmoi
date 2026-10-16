# Editor
export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim

# Vi mode (overrides Omarchy if needed)
set -o vi

# Paths
source ~/.config/bash/paths

# Aliases
[ -f ~/.config/bash/aliases ] && source ~/.config/bash/aliases

# Tools
source ~/.config/bash/tools


