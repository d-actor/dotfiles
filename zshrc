export ZSH="/Users/danactor/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# configuration
export PATH=/Users/danactor/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH="$PATH:$(yarn global bin)"
export RBENV_SHELL=zsh
#source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.zsh'
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/Users/danactor/.rbenv/shims:/Users/danactor/.rbenv/shims:/usr/local/opt/mysql@5.7/bin:/Users/danactor/.rbenv/bin:/usr/local/opt/qt@5.5/bin:/Applications/Postgres.app/Contents/Versions/10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/bin

eval export PATH="/Users/danactor/.rbenv/shims:${PATH}"

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
alias c='clear'
alias code='open -a "Visual Studio Code"'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias vim='nvim'
alias ls='ls -GFh'
alias ll='ls -l'
alias be='bundle exec'
alias bake='be rake'
alias bails='be rails'
alias bers='bundle && bails s'
alias baker='bake routes'
alias mig='bundle && bake db:migrate'
alias dcms='bake db:drop db:create db:migrate db:seed'
alias dcm="bake db:drop db:create db:migrate"
alias seed="bake db:seed"
alias berser='bundle && be rails s -p 3001'
alias bespec='be rspec'
alias bercon='be rails g controller'
alias bermod='be rails g model'
alias bermig='be rails g migration'
alias bi='bundle install'
alias yarns='yarn && yarn start'
alias gits='git status'
alias push='git push'
alias pull='git pull origin dev'
alias rebase='git rebase origin/dev'
alias fetch='git fetch'
alias gita='git add .'
alias gitc='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias dev='gco dev'
alias stash='git stash'
alias rc="bundle exec rails c"
alias schema='gco db/schema.rb'
alias dbyml='gco config/database.yml'
alias rake='noglob rake'
alias side='redis-cli flushall && be sidekiq'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias config='vim ~/.config/nvim/init.vim'
alias zsh='vim ~/.zshrc'
alias ri='rake install'
alias rspecp="bundle && bin/rails db:environment:set RAILS_ENV=test && RAILS_ENV=test rails parallel:drop && RAILS_ENV=test rails parallel:create && RAILS_ENV=test rails parallel:migrate && RAILS_ENV=test rails parallel:spec"
#alias rspecp="bundle && bin/rails db:environment:set RAILS_ENV=test && RAILS_ENV=test rails parallel:drop && RAILS_ENV=test rails parallel:create[3] && RAILS_ENV=test rails parallel:migrate[3] && RAILS_ENV=test rails parallel:spec[3]"
alias setrspec="bin/rails db:environment:set RAILS_ENV=test && bake db:drop db:create db:migrate RAILS_ENV=test"
alias restart="brew services restart mysql"
alias killsidekiq="ps -ef | grep sidekiq | grep -v grep | awk '{print $2}' | xargs kill -9"
