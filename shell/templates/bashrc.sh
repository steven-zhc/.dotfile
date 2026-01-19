# Bash configuration template
# Symlink this to ~/.bashrc

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
# Load optional local configurations
if [ -f "$HOME/.myenv" ]; then
    . "$HOME/.myenv"
fi

if [ -f "$HOME/.aliases" ]; then
    . "$HOME/.aliases"
fi
