# Path to your oh-my-zsh installation.
export ZSH="/Users/danielactor/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=/Users/danielactor/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/Applications/Postgres.app/Contents/Versions/10/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
eval export PATH="/Users/danielactor/.rbenv/shims:${PATH}"
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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases
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

