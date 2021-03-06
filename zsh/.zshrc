# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
plugins=(sudo)

source $ZSH/oh-my-zsh.sh

PROMPT="$PROMPT%# "

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%}"
    unset timer
  fi
}

# Base16 Shell
BASE16_SHELL="$HOME/.config/theme-wrapper/shell"
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Ros environment
ROS_SETUP="/opt/ros/kinetic/setup.zsh"
[[ -s $ROS_SETUP ]] && source $ROS_SETUP

# Dynamic Colors 
# https://github.com/sos4nt/dynamic-colors
# export PATH="$HOME/bin:$HOME/.dynamic-colors/bin:$PATH"
# source $HOME/.dynamic-colors/completions/dynamic-colors.zsh

# User configuration

#export PATH=$HOME/bin:/usr/local/bin:$PATH
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lftp-svn="lftp -u F56118B http://itven1mantis1.mmemea.marelliad.net/dream2/DREAM2/Branches/"
alias marellipt="sudo marelli-proxy apt-get"
alias lock="cmatrix; slock"
alias screencast="avconv -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 "
alias fork="fork &> /dev/null"
alias gitlog="git log --graph --all --decorate=full"
alias start-gpg-agent="gpg-agent --daemon --write-env-file $HOME/.env"
alias source-gpg-agent="source $HOME/.env"
alias to-clipboard="xclip -selection clipboard -i"

export repo_server="F09620C@itven1mantis1.mmemea.marelliad.net"
export repo="ssh://F09620C@itven1mantis1.mmemea.marelliad.net:/san1/git/technology_innovation"

alias repo-list="ssh $repo_server 'ls /san1/git/technology_innovation/'"

export HISTSIZE=10000000
