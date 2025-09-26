# Fish shell configuration template
# Symlink this to ~/.config/fish/config.fish

# Determine platform
set platform (uname | tr '[:upper:]' '[:lower:]')
if test "$platform" = "darwin"
    set platform "mac"
end

# Load platform-specific configuration
set config_file ~/.dotfile/shell/fish/$platform/config.fish
if test -f $config_file
    source $config_file
else
    echo "Warning: No fish config found for platform: $platform"
    # Fallback to core configuration
    source ~/.dotfile/shell/fish/core/env.fish
    source ~/.dotfile/shell/fish/core/aliases.fish
end