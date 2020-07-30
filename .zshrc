# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/why/.oh-my-zsh"
export PATH="$PATH:~/bin"
export EDITOR=/usr/bin/nvim
export HISTTIMEFORMAT="%F %T  "		#this line is not using for zsh,it's for bash
##set terminal proxy as ssr
#export http_proxy="socks5://127.0.0.1:1080"
#export https_proxy="socks5://127.0.0.1:1080"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(git autojump zsh-syntax-highlighting zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export TERM=xterm-256color
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
bindkey ',' autosuggest-accept
##shell function
function addem {
	  echo $[ $1 + $2 + $3 +$4 ]
  }

#!/usr/bin/bash
  function cj ()
  {
	cd $(find ~ -type d | fzf)
  }
    

  function lisi () {  
  	        echo 我的名字叫: $1  
  	}  

  function digital_clock {
      clear
      while [ 1 ]
      do
          date +'%T'
          sleep 1
          clear
      done
  }
  # search in current directory
  function search {
      find . -name $1
  }

  function system_info {
      echo "### OS information ###"
      lsb_release -a

      echo
      echo "### Processor information ###"
      processor=`grep -wc "processor" /proc/cpuinfo`
      model=`grep -w "model name" /proc/cpuinfo  | awk -F: '{print $2}'`
      echo "Processor = $processor"
      echo "Model     = $model"

      echo
      echo "### Memory information ###"
      total=`grep -w "MemTotal" /proc/meminfo | awk '{print $2}'`
      free=`grep -w "MemFree" /proc/meminfo | awk '{print $2}'`
      echo "Total memory: $total kB"
      echo "Free memory : $free kB"
  }

  function log_msg {
      echo "[`date '+ %F %T'` ]: $@"
  }
##show the size of specific folder
  function size {
  	du -sh $1 * | sort -hr
  }

function fixtp {
	sudo rmmod i2c_hid && sudo modprobe i2c_hid
}

#USER alias
#alias fixtp='sudo rmmod i2c_hid && sudo modprobe i2c_hid'
#eval $(thefuck --alias)
alias scb="cat ~/bin/wudao-dict/wudao-dict/usr/notebook.txt"
alias mkdir="mkdir -pv"
alias ra='ranger'
alias rm="rm -rv"
alias cp='cp -i'
alias helan="ssh -o ServerAliveInterval=60 root@136.244.109.14 -i ~/.ssh/id_rsa"
alias vim='nvim'
alias wttr='curl wttr.in'
alias nword='less ~/private/Wudao-dict-master/wudao-dict/usr/notebook.txt'
alias now='date "+%Y-%m-%d %H:%M:%S"'
alias myip='curl ipinfo.io/ip'
alias auto='systemctl list-unit-files --type=service | grep enabled | more'
alias shuimian="sudo systemctl hibernate"
alias c="clear"
alias ba='acpi -bi'
alias ldi='xbacklight -inc 30'
alias ldd='xbacklight -dec 20'
alias vu='amixer set Master 5%+'
alias vd='amixer set Master 5%-'
#alias mh='mount PARTUUID=a96b800d-0909-406a-a1d0-87f8b2897d24 /home/why/my-hdd'
alias ping='ping -c 5'
alias vs='vim $(fzf)'
#trash-cli
alias tl='trash-list'
alias rf='ranger $(find ~ -type d | fzf)'
#代理设置
## 代理设置
###url=socks5://127.0.0.1:1080
# 如果代理失效的话直接运行 poff 即可断开 proxy
alias poff='unset all_proxy'
# 快捷方式打开
alias pon='export all_proxy=$url'
alias xiumian='systemctl suspend'
alias fdh='fd -H'

#youtube-dl
alias yd='youtube-dl-interactive'
alias ydp='proxychains youtube-dl-interactive'
d='dirs -v | head -10'

#variety wallpaper
alias wn='variety --next'
alias wp='variety --previous'

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
    fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}

_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)
zle -N zle-line-init
zle -N zle-keymap-select
KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
