# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git rake capistrano symfony2 sublime)

source $ZSH/oh-my-zsh.sh

# Load the rest of the dotfiles
for DOTFILE in `find /Users/mikepearce/.dotfiles/system`
do
  [ -f $DOTFILE ] && source $DOTFILE
done
