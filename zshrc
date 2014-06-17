# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mark"

plugins=(autojump brew chruby git heroku npm rails ruby tmuxinator vagrant)

source $ZSH/oh-my-zsh.sh

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export ARCHFLAGS="-arch x86_64"
export EDITOR=vim
export SHELL=/opt/boxen/homebrew/bin/zsh

alias bx='bundle exec'

alias gitjk="history 10 | tail -r | gitjk_cmd"

alias e='mvim -v'

alias scb='script/cibuild'

alias vh="vagrant halt"
alias vssh="vagrant ssh"
alias vu="vagrant up"

function stats() {
  ~/src/tarebyte/OSXey/OSXey -c
}