# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zero/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lukerandall"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
rails
rvm
ruby
zsh-syntax-highlighting
zsh-completions
git
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

###################################################################################################
# KiTTY
alias icat="kitty +kitten icat"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
###################################################################################################
# PATHS
export PATH="/home/zero/.bin:$PATH"
export PATH="/home/zero/.conky:$PATH"
export GEM_HOME=~/.gem/ruby/2.5.0/bin
export GAMES_HOME=~/games
export CAV=$HOME/Documents/UniAv/CAV
export PATH="$PATH:~/.gem/ruby/2.5.0/bin"
export PATH="$PATH:$KAFKA_HOME"
export PATH="$PATH:$ES_HOME"
export PATH="$PATH:$INTELIJ_HOME"
export PATH="$PATH:$PYCHARM_HOME"
export PATH="$PATH:$GAMES_HOME"
export PATH="~/.local/bin:$PATH"
#
###################################################################################################
# aliases
alias open="xdg-open"
alias hibernate="systemctl hibernate"
alias suspend="systemctl suspend"
alias del="rmtrash"
alias ls="lsd"

###################################
# work aliases
alias tese="cd ~/Documents/Tese"
alias cav="cd ~/Documents/UniAv/CAV"
alias es="cd ~/Documents/UniAv/ES"
alias gpe="cd ~/Documents/UniAv/GPE"
alias pse="cd ~/Documents/UniAv/PSE"
alias c2="cd ~/Documents/UniAv/CII"
alias vm="vboxmanage"
alias epclog="sshpass -p CQtp42Nit ssh zero@nextepc"
alias pip="pip3"

#######################################################
# Spotify
export SPICETIFY_INSTALL="/home/zero/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
alias adfree_spotify="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"

######################################################
# Java
alias java13="java"
alias java8="/usr/lib/jvm/java-8-openjdk/jre/bin/java"

###################################################################################################
# docker stuff
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


###################################################################################################
# tmux stuff
#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi

###################################################################################################
# pywall stuff
cat ~/.cache/wal/sequences
