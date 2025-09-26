# macOS-specific Fish configuration

# Load core configurations
source ~/.dotfile/shell/fish/core/env.fish
source ~/.dotfile/shell/fish/core/aliases.fish

# macOS-specific environment
# pnpm (macOS specific path)
set -gx PNPM_HOME /Users/steven/.pnpm
if not string match -q "*:$PNPM_HOME:*" ":$PATH:"
    fish_add_path $PNPM_HOME
end

# Local bin (Fish equivalent of ~/.local/bin/env)
# The original file uses POSIX syntax, so we replicate its logic in Fish
if not contains ~/.local/bin $PATH
    fish_add_path --prepend ~/.local/bin
end

# Fish-specific configurations
set -g fish_greeting ""  # Disable greeting
set -g fish_color_autosuggestion 555