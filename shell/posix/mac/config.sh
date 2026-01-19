# macOS-specific POSIX shell configuration

# Load core configurations
if [ -f ~/.dotfile/shell/posix/core/env.sh ]; then
    . ~/.dotfile/shell/posix/core/env.sh
fi

if [ -f ~/.dotfile/shell/posix/core/aliases.sh ]; then
    . ~/.dotfile/shell/posix/core/aliases.sh
fi

# macOS-specific environment
# Homebrew for Apple Silicon
if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Local bin environment
if [ -f ~/.local/bin/env ]; then
    . ~/.local/bin/env
fi