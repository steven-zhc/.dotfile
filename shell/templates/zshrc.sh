# Zsh configuration template
# Symlink this to ~/.zshrc

# Determine platform
case "$(uname)" in
    Darwin) platform="mac" ;;
    Linux)
        if [ -f /etc/oracle-release ]; then
            if grep -q "release 8" /etc/oracle-release; then
                platform="vm-oel8"
            else
                platform="vm-oel7"
            fi
        else
            platform="linux"
        fi
        ;;
    *) platform="unknown" ;;
esac

# Load platform-specific configuration
config_file="$HOME/.dotfile/shell/posix/$platform/config.sh"
if [ -f "$config_file" ]; then
    source "$config_file"
else
    echo "Warning: No config found for platform: $platform"
    # Fallback to core configuration
    source ~/.dotfile/shell/posix/core/env.sh
    source ~/.dotfile/shell/posix/core/aliases.sh
fi

# Zsh-specific configurations
ZSH_THEME="bira"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=215'