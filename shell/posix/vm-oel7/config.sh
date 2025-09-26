# OEL7-specific POSIX shell configuration

# Load core configurations
if [ -f ~/.dotfile/shell/posix/core/env.sh ]; then
    . ~/.dotfile/shell/posix/core/env.sh
fi

if [ -f ~/.dotfile/shell/posix/core/aliases.sh ]; then
    . ~/.dotfile/shell/posix/core/aliases.sh
fi

# OEL7-specific environment (add as needed)
# Similar to OEL8 but with any OEL7-specific differences