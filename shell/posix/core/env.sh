# POSIX shell environment variables

# Load secrets if available
if [ -f ~/.secret ]; then
    . ~/.secret
fi

# Core environment
export XDG_CONFIG_HOME=~/.config
export EDITOR=nvim

# Node.js and package managers
export VOLTA_HOME=$HOME/.volta
export PNPM_HOME=$HOME/.pnpm

# Ansible
export ANSIBLE_CONFIG=~/.ansible/ansible.cfg

# Work-station and tools
export FZF_DEFAULT_COMMAND='rg --files'

# PATH additions
export PATH="$PNPM_HOME:$VOLTA_HOME/bin:/Users/${USER}/workspace/work-station/script:~/.local/bin:$PATH"