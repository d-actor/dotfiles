export PATH=/Users/danielactor/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
eval export PATH="/Users/danielactor/.rbenv/shims:${PATH}"
export PATH="$HOME/Desktop/arc/arcanist/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
    rehash|shell)
      eval "$(rbenv "sh-$command" "$@")";;
    *)
      command rbenv "$command" "$@";;
  esac
}

alias code='open -a "Visual Studio Code"'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias ll='ls -l'
alias be='bundle exec'
alias bake='be rake'
alias bails='be rails'
alias baker='bake routes'
alias mig='bake db:migrate'
alias dcms='bake db:drop db:create db:migrate db:seed'
alias berser='bundle && be rails s -p 3001'
alias bercon='be rails g controller'
alias bermod='be rails g model'
alias bi='bundle install'
alias yarns='yarn && yarn start'
alias gits='git status'
alias gpom='git push origin master'
alias rebase='git rebase origin/master'
alias fetch='git fetch'
alias gita='git add .'
alias gitc='git commit -m'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias src='source ~/.bash_profile'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $WHITE[\A] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

