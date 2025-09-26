# OEL8-specific POSIX shell configuration

# Load core configurations
if [ -f ~/.dotfile/shell/posix/core/env.sh ]; then
    . ~/.dotfile/shell/posix/core/env.sh
fi

if [ -f ~/.dotfile/shell/posix/core/aliases.sh ]; then
    . ~/.dotfile/shell/posix/core/aliases.sh
fi

# OEL8-specific environment
# Starship
export BIN_DIR=/scratch/local/apps/starship

# Podman
export TMPDIR=/scratch/podman/tmp

# Additional PATH
export PATH=$PATH:/scratch/local/apps/bin

# Java: conflict with ade label
# export JAVA_HOME=/scratch/jdk/jdk-11
# export PATH=$JAVA_HOME/bin:$PATH

# OEL8-specific aliases
alias pc="podman-compose"
alias p="podman"
alias pb="pnpm run build"
alias rgf='rg --files | rg'