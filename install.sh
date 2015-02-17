#!/bin/sh

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
source "$DOTFILES_DIR/install/osx.sh"
