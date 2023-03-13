# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="codespaces"

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

plugins=(
  git
  zsh-autosuggestions
)

# History
setopt share_history
setopt inc_append_history

# Aliases
alias pj='npx projen'
alias k='kubectl'

# MacOS
if [ $(uname) = Darwin ]; then
  # Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"
  # Nodebrew
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

source $ZSH/oh-my-zsh.sh
