DEFAULT_USER=$USER
eval "$(rbenv init -)"

# Aliases
alias bers="bundle exec rails"
alias berk="bundle exec rake"
alias haus="ssh -p 14159 weineng@haus.weineng.io"
alias telebot="ssh root@178.128.121.225"
alias sshkey="cat ~/.ssh/id_rsa.pub"
alias lionsql="psql lions_rails_dev"
alias newdb="~/documents/scripts/lions_update_db.sh"
alias tmuxk="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"
alias xfer='{ file=$(cat -); scp -P 14159 $file  weineng@weineng.hopto.org:~/Downloads; }<<<'
alias lsf="ssh weineng@sunfire.comp.nus.edu.sg"
alias dev="cd ~/Developer"
alias mods="cd /Users/weineng/Google\ Drive/Y2S1"
alias docs="cd ~/Documents"
set mouse=a
HYPHEN_INSENSITIVE="true"i

export TERM="xterm-256color"
export ZSH=/Users/weineng/.oh-my-zsh

# aliases
alias ls="ls -lhG"
function cd {
  builtin cd "$@" && ls -F
}

# Overriden alias
alias rm "rm -i"
alias cp "cp --reflink=auto --sparse=always"
alias sudo "sudo -E"

# POWERLEVEL9K config
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

plugins=(
  git
)

# Alias to replace git plugin
alias gcmsg="git commit -S -m"

# Set up shell and scripts
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/etc/profile.d/z.sh

export PATH="$PATH:$HOME/.rvm/bin"
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"
export GPG_TTY=$(tty)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv rbenv rvm)

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"
 
POWERLEVEL9K_STATUS_VERBOSE=false
 
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'

# colors
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="001"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="001"
POWERLEVEL9K_DIR_HOME_BACKGROUND="010"
POWERLEVEL9K_DIR_HOME_FOREGROUND="000"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="004"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="000"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="001"
POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
POWERLEVEL9K_NODE_VERSION_FOREGROUND="007"
POWERLEVEL9K_NODE_VERSION_VISUAL_IDENTIFIER_COLOR="002"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="007"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
eOWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND="007"
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="001"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="007"

# Override git alias
alias gca="git commit -S --amend"
alias gbclean="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"