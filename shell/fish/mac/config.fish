# macOS-specific Fish configuration

# Load core configurations
source ~/.dotfile/shell/fish/core/env.fish
source ~/.dotfile/shell/fish/core/aliases.fish

# macOS-specific environment
# Homebrew for Apple Silicon
if test -f /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

# Local bin (Fish equivalent of ~/.local/bin/env)
# The original file uses POSIX syntax, so we replicate its logic in Fish
if not contains $HOME/.local/bin $PATH
    fish_add_path --prepend $HOME/.local/bin
end

# Fish-specific configurations
set -g fish_greeting ""  # Disable greeting
set -g fish_color_autosuggestion 555