# Fish aliases
# Git
alias gst="git status"
alias lg="lazygit"
alias gc="git reset --hard HEAD; git clean -df"

# Gulp
alias g="gulp"
alias gt="gulp --tasks"

# Editor
alias vi="nvim"

# Kubernetes
alias k="kubectl"

# Container
alias d="docker"
alias dc="docker-compose"

# Docker functions
function dcn
    docker rmi -f (docker images | grep 'one' | awk '{print $3}')
end

function dce
    docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
end

# Help function using bat
function help
    $argv --help 2>&1 | bathelp
end