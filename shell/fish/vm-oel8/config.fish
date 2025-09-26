# OEL8-specific Fish configuration

# Load core configurations
source ~/.dotfile/shell/fish/core/env.fish
source ~/.dotfile/shell/fish/core/aliases.fish

# OEL8-specific environment
set -gx BIN_DIR /scratch/local/apps/starship
set -gx TMPDIR /scratch/podman/tmp

# Additional PATH
fish_add_path /scratch/local/apps/bin

# Java: conflict with ade label
# set -gx JAVA_HOME /scratch/jdk/jdk-11
# fish_add_path $JAVA_HOME/bin

# Local bin (Fish equivalent of ~/.local/bin/env)
if not contains ~/.local/bin $PATH
    fish_add_path --prepend ~/.local/bin
end

# OEL8-specific aliases
alias pc="podman-compose"
alias p="podman"
alias pb="pnpm run build"
alias rgf='rg --files | rg'