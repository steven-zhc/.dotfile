# POSIX shell aliases (bash/zsh compatible)

# Git
alias gst="git status"
alias lg="lazygit"
alias gc="git reset --hard HEAD; git clean -df"

# Gulp
alias g='gulp'
alias gt='gulp --tasks'

# Editor
alias vi="nvim"

# Kubernetes
alias k="kubectl"

# Container
alias d="docker"
alias dc="docker-compose"

# Functions
dcn() {
    docker rmi -f $(docker images | grep 'one' | awk '{print $3}')
}

alias dce="docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm"

# Help function using bat
help() {
    "$@" --help 2>&1 | bathelp
}