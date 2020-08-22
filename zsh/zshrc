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
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
###################################################################################################
# PATHS
export PATH="/home/zero/.bin:$PATH"
export PATH="/home/zero/.conky:$PATH"
#export PATH="/home/zero/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#
#
export GEM_HOME=~/.gem/ruby/2.5.0/bin
export ES_HOME=~/.bin/elasticsearch-6.7.1/bin
export KAFKA_HOME=~/.bin/kafka_2.12-2.2.0/bin
export INTELIJ_HOME=~/.IDE/idea-IC-183.5912.21/bin
export PYCHARM_HOME=~/.IDE/pycharm-community-2019.2.2/bin
export GAMES_HOME=~/games
export PATH="$PATH:~/.gem/ruby/2.5.0/bin"
export PATH="$PATH:$KAFKA_HOME"
export PATH="$PATH:$ES_HOME"
export PATH="$PATH:$INTELIJ_HOME"
export PATH="$PATH:$PYCHARM_HOME"
export PATH="$PATH:$GAMES_HOME"
#
###################################################################################################
# aliases
alias open="xdg-open"
alias hibernate="systemctl hibernate"
alias suspend="systemctl suspend"
alias del="rmtrash"
alias user_out="sudo pkill -KILL -u zero"
alias tron="ssh sshtron.zachlatta.com"
alias ng="~/.npm-global/lib/node_modules/@angular/cli/bin/ng"
alias pacman="sudo pacman"
alias scouts="cd ~/Documents/Scouts/smf/IV\ \-\ \Caminheiros"
alias minecraft="java -jar /home/zero/games/Minecraft\ 1.13.1\ by\ TeamExtreme/Mac\ \&\ Linux/Minecraft\ Launcher.jar"

###################################
# work aliases
alias iot="~/Documents/Bolsas/CityIoT_2/IoTCC"
alias ara="~/Documents/UniAv/4_ano/ARA" 
alias aca="~/Documents/UniAv/4_ano/ACA" 
alias seg="~/Documents/UniAv/4_ano/SEG" 
alias edc="~/Documents/UniAv/4_ano/EDC" 
alias cv="~/Documents/UniAv/4_ano/CV" 
alias kafka="~/Documents/.tutorials/kafka"
alias vpnIT="sudo openvpn --config /etc/openvpn/client/vpn_IT.ovpn"
alias sdub="docker-compose stop && docker-compose down && docker-compose up --build"
alias quartus="~/intelFPGA_lite/18.1/quartus/bin/quartus"
alias citizencard="dex /usr/share/applications/pteid-mw-gui.desktop"

#######################################################
# Spotify
alias adfree_spotify="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"

######################################################
# Java
alias java13="java"
alias java8="/usr/lib/jvm/java-8-openjdk/jre/bin/java"

rasp_iot () {
  sudo ifconfig wlp3s0 down
  sudo iwconfig wlp3s0 essid "RBPIOTCNet" channel 1 mode Ad-Hoc
  sudo ifconfig wlp3s0 192.168.15.2
  sudo ifconfig wlp3s0 up
}

###################################################################################################
# docker stuff
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


###################################################################################################
# tmux stuff
#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi
