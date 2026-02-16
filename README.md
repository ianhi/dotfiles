# Dotfiles

Terminal setup with Tokyo Night theming and vim keybindings.

## What's Included

- **kitty** - Terminal emulator config + Tokyo Night theme
- **zellij** - Terminal multiplexer config + clean layout
- **nvim** - LazyVim-based Neovim config
- **tmux** - Tmux config with vim-style navigation
- **zsh** - Shell config
- **bin/zellij-help** - Quick-reference script for zellij keybindings

## Install

```bash
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles
bash install.sh
```

This backs up any existing configs to `~/.dotfiles-backup-<date>/` and creates symlinks.
