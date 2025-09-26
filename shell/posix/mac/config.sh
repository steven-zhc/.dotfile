# macOS-specific POSIX shell configuration

# Load core configurations
if [ -f ~/.dotfile/shell/posix/core/env.sh ]; then
    . ~/.dotfile/shell/posix/core/env.sh
fi

if [ -f ~/.dotfile/shell/posix/core/aliases.sh ]; then
    . ~/.dotfile/shell/posix/core/aliases.sh
fi

# macOS-specific environment
# pnpm (ensure it's in PATH)
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Local bin environment
if [ -f ~/.local/bin/env ]; then
    . ~/.local/bin/env
fi