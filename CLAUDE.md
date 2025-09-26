# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages shell configurations, terminal themes, container configurations, and system automation across multiple environments (macOS, OEL7, OEL8).

## Directory Structure

- **shell/**: Multi-shell configurations with unified structure
  - `shared/`: Shell-agnostic configuration data (aliases.txt, env.txt, paths.txt)
  - `posix/`: POSIX shell (bash/zsh) configurations
    - `core/`: Shared POSIX configurations (aliases.sh, env.sh)
    - `mac/`, `vm-oel7/`, `vm-oel8/`: Platform-specific POSIX configs
  - `fish/`: Fish shell configurations
    - `core/`: Shared Fish configurations (aliases.fish, env.fish, functions/)
    - `mac/`, `vm-oel7/`, `vm-oel8/`: Platform-specific Fish configs
  - `templates/`: Shell startup file templates for symlinking
- **ansible/**: Ansible configurations and inventory
- **iterm2/**: iTerm2 color schemes and configurations
- **kitty/**: Kitty terminal configurations
- **podman/**: Podman container configurations
- **git/**: Git configurations
- **os/**: OS-specific setup documentation

## Setup Process

The repository uses symbolic linking to deploy configurations. Key setup commands:

### Shell Setup (Choose One)

#### Fish Shell Setup
```bash
# Fish configuration
ln -s ~/.dotfile/shell/templates/config.fish ~/.config/fish/config.fish
```

#### Zsh Setup
```bash
# Zsh configuration
ln -s ~/.dotfile/shell/templates/zshrc.sh ~/.zshrc
```

#### Bash Setup
```bash
# Bash configuration
ln -s ~/.dotfile/shell/templates/bashrc.sh ~/.bashrc
```

### Additional Components
```bash
# Ansible
ln -s .dotfile/ansible/ansible.cfg ~/.ansible/ansible.cfg
ln -s .dotfile/ansible/hosts.yml ~/.ansible/hosts.yml

# Podman
ln -s .dotfile/podman/.config/containers ~/.config/containers
```

## Environment Configuration

- **Multi-shell support**: Configurations automatically detect platform and shell type
- **Hierarchical loading**: Platform-specific configs load core configurations
  - Fish: `config.fish` → `platform/config.fish` → `core/env.fish` + `core/aliases.fish`
  - POSIX: template → `platform/config.sh` → `core/env.sh` + `core/aliases.sh`
- **Shared data**: Common aliases and environment variables defined in `shell/shared/`
- **Platform detection**: Automatic detection of macOS, OEL7, OEL8 environments
- **Editor**: Default editor is set to `nvim`
- **Package managers**: Configured for Volta (Node.js), pnpm, and Homebrew
- **Path additions**: Includes ~/.local/bin, work-station scripts, and package manager bins

## Key Aliases and Tools

Core aliases defined in both Fish and POSIX formats:
- `gst`: git status
- `lg`: lazygit
- `gc`: git reset --hard HEAD; git clean -df
- `vi`: nvim
- `k`: kubectl
- `d`: docker
- `dc`: docker-compose

Shell-specific functions:
- `dcn()`: Remove docker images matching 'one'
- `dce`: Remove exited containers
- `help()`: Show help with bat formatting

## Configuration Management

- **Ansible**: Uses ~/.ansible/ansible.cfg with inventory at ~/.ansible/hosts.yml
- **Secrets**: Optional ~/.secret file for sensitive environment variables
- **FZF integration**: Configured with ripgrep for file searching
- **Terminal themes**: Multiple iTerm2 color schemes available