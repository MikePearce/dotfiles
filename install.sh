#!/bin/sh

# Clone the dotfiles
git clone https://github.com/MikePearce/dotfiles.git
cd dotfiles

# Get oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Do some installs and defaults
source "$DOTFILES_DIR/install/osx.sh"
source "$DOTFILES_DIR/osxdefaults.sh"
