#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$HOME/.dotfiles"
BACKUP="$HOME/.dotfiles-backup-$(date +%Y%m%d-%H%M%S)"
backed_up=false

backup() {
    local target="$1"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        if [ "$backed_up" = false ]; then
            mkdir -p "$BACKUP"
            backed_up=true
        fi
        echo "  Backing up $target → $BACKUP/"
        mv "$target" "$BACKUP/"
    elif [ -L "$target" ]; then
        rm "$target"
    fi
}

link() {
    local src="$1"
    local dest="$2"
    backup "$dest"
    mkdir -p "$(dirname "$dest")"
    ln -s "$src" "$dest"
    echo "  Linked $dest → $src"
}

echo "Installing dotfiles..."
echo ""

# Kitty
echo "Kitty:"
link "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
link "$DOTFILES/kitty/current-theme.conf" "$HOME/.config/kitty/current-theme.conf"

# Zellij
echo "Zellij:"
link "$DOTFILES/zellij/config.kdl" "$HOME/.config/zellij/config.kdl"
link "$DOTFILES/zellij/layouts/clean.kdl" "$HOME/.config/zellij/layouts/clean.kdl"

# Neovim (link entire directory)
echo "Neovim:"
backup "$HOME/.config/nvim"
if [ -L "$HOME/.config/nvim" ]; then
    rm "$HOME/.config/nvim"
fi
ln -s "$DOTFILES/nvim" "$HOME/.config/nvim"
echo "  Linked $HOME/.config/nvim → $DOTFILES/nvim"

# Tmux
echo "Tmux:"
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# Zsh
echo "Zsh:"
link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# bin
echo "Bin:"
link "$DOTFILES/bin/zellij-help" "$HOME/.local/bin/zellij-help"

echo ""
if [ "$backed_up" = true ]; then
    echo "Originals backed up to: $BACKUP"
fi
echo "Done! All dotfiles linked."
