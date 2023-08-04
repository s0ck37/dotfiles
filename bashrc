#
# ~/.bashrc
#

# If not running interactively, don't do anything
function gtoken () {
  cat ~/.gt | xclip -sel clip
  sleep 5
  echo -n "" | xclip -sel clip
}

[[ $- != *i* ]] && return

alias ls='exa '
alias gtoken='gtoken &'
alias bat='batcat --theme base16 '
#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#PS1="\[\e[1m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"

. "$HOME/.cargo/env"
PS1='\[\e[91;1m\]\u\[\e[0;97m\]:\[\e[94;1m\]\w\[\e[0m\] \[\e[94;1m\]#\[\e[0m\] '
