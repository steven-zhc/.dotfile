# dotfile

Personal dotfiles repository managing shell configurations, terminal themes, container configurations, and system automation across multiple environments.

## Quick Setup

### Shell Configuration
See [shell/README.md](shell/README.md) for detailed shell setup instructions supporting Fish, Zsh, and Bash.

### Additional Components

#### tmux

```bash
ln -s .dotfile/tmux/mac/tmux.conf ~/.tmux.conf
```

#### Ansible
```bash
ln -s .dotfile/ansible/ansible.cfg ~/.ansible/ansible.cfg
ln -s .dotfile/ansible/hosts.yml ~/.ansible/hosts.yml
```

#### Podman
```bash
ln -s .dotfile/podman/.config/containers ~/.config/containers
```


## Features

- Multi-shell support (Fish, Zsh, Bash)
- Platform-specific configurations (macOS, OEL7, OEL8)
- Unified alias and environment management
- Container and Kubernetes tooling
- Git configuration and shortcuts
- Terminal themes and configurations