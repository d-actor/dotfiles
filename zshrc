export ZSH="/Users/danielactor/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# configuration
export PATH=/Users/danielactor/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
eval export PATH="/Users/danielactor/.rbenv/shims:${PATH}"
eval "$(rbenv init -)"
export PATH="$HOME/Desktop/arc/arcanist/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"
export RBENV_SHELL=zsh
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.zsh'
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

# aliases
alias code='open -a "Visual Studio Code"'
alias oni='open -a "Oni"'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='nvim'
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
alias proj='cd Desktop/Projects'
alias dpl='cd Desktop/DPL'
alias freelance='cd Desktop/Freelance'
alias config='vim ~/.config/nvim/init.vim'

