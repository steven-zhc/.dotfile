# Fish environment variables

# Load secrets if available
if test -f ~/.secret
    source ~/.secret
end

# Core environment
set -gx XDG_CONFIG_HOME ~/.config
set -gx EDITOR nvim

# Node.js and package managers
set -gx VOLTA_HOME /Users/steven/.volta
set -gx PNPM_HOME /Users/steven/.pnpm

# Ansible
set -gx ANSIBLE_CONFIG ~/.ansible/ansible.cfg

# Work-station and tools
set -gx FZF_DEFAULT_COMMAND 'rg --files'

# PATH additions
fish_add_path $VOLTA_HOME/bin
fish_add_path $PNPM_HOME
fish_add_path /Users/(whoami)/workspace/work-station/script

# ~/.local/bin is handled by platform-specific configs since the original
# ~/.local/bin/env uses POSIX syntax that Fish cannot source directly

# Initialize starship prompt if available
if command -v starship > /dev/null
    starship init fish | source
end