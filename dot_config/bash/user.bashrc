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


