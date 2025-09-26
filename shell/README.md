# Shell Configuration Setup

This directory contains multi-shell configurations supporting both POSIX shells (bash/zsh) and Fish shell with automatic platform detection.

## Structure

```
shell/
├── shared/          # Shell-agnostic configuration data
├── posix/           # POSIX shell (bash/zsh) configurations
│   ├── core/        # Shared POSIX configs
│   └── <platform>/  # Platform-specific configs (mac, vm-oel7, vm-oel8)
├── fish/            # Fish shell configurations
│   ├── core/        # Shared Fish configs
│   └── <platform>/  # Platform-specific configs
└── templates/       # Shell startup file templates
```

## Quick Setup

```bash
ln -s ~/.dotfile/git/.gitconfig ~/.gitconfig
```

Choose **one** shell configuration:

### Fish Shell (Recommended)
```bash
# Create fish config directory if it doesn't exist
mkdir -p ~/.config/fish

# Link fish configuration
ln -s ~/.dotfile/shell/templates/config.fish ~/.config/fish/config.fish
```

### Zsh Shell
```bash
# Backup existing config
cp ~/.zshrc ~/.zshrc.bak 2>/dev/null || true

# Link zsh configuration
ln -s ~/.dotfile/shell/templates/zshrc.sh ~/.zshrc
```

### Bash Shell
```bash
# Backup existing config
cp ~/.bashrc ~/.bashrc.bak 2>/dev/null || true

# Link bash configuration
ln -s ~/.dotfile/shell/templates/bashrc.sh ~/.bashrc
```

## Platform Support

The configuration automatically detects your platform:
- **macOS**: Uses `mac/` configurations
- **Oracle Linux 7**: Uses `vm-oel7/` configurations
- **Oracle Linux 8**: Uses `vm-oel8/` configurations

## Migration from Old Structure

If you're migrating from the old structure:

1. **Backup current configs**: Your existing dotfiles are preserved
2. **Choose new shell setup**: Use one of the quick setup commands above
3. **Test configuration**: Open a new terminal to verify everything works
4. **Clean up old symlinks** (optional):
   ```bash
   # Remove old symlinks if they exist
   rm ~/.aliases ~/.aliases-core ~/.myenv ~/.myenv-core 2>/dev/null || true
   ```

## Features

- **Automatic platform detection**: No manual configuration needed
- **Shell-specific optimizations**: Fish gets Fish syntax, POSIX gets POSIX syntax
- **Shared configuration data**: Common aliases and environment variables
- **Hierarchical loading**: Platform → Core → Shared configurations
- **Clean separation**: Easy to maintain and extend

## Troubleshooting

If you encounter issues:
1. Check that the symlink was created correctly: `ls -la ~/.config/fish/config.fish` (for Fish)
2. Verify platform detection: The config will show warnings if platform isn't recognized
3. Test in a new terminal session to ensure changes take effect