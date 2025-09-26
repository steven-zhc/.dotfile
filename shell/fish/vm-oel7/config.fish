# OEL7-specific Fish configuration

# Load core configurations
source ~/.dotfile/shell/fish/core/env.fish
source ~/.dotfile/shell/fish/core/aliases.fish

# Local bin (Fish equivalent of ~/.local/bin/env)
if not contains ~/.local/bin $PATH
    fish_add_path --prepend ~/.local/bin
end

# OEL7-specific environment (add as needed)
# Similar to OEL8 but with any OEL7-specific differences