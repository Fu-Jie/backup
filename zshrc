# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/fujie/.oh-my-zsh"
#set -o noclobber #表示开启静止重定向覆盖文件功能,除非使用>|这个操作符.
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="amuse"
 ZSH_THEME="random"
profile="/Users/fujie/.config/powershell/Microsoft.PowerShell_profile.ps1"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
 ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "amuse" "ys" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=20

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  git
  zsh-syntax-highlighting
  # npm
  # node
 # vi-mode
  zsh-autosuggestions
  sublime
  common-aliases
  wd
  osx


)

source $ZSH/oh-my-zsh.sh

# User configuration

 export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=zh_CN.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"



# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# 设置清除历史记录的别名为clc
alias clc="clear"

# 添加环境变量;



alias pc="pbcopy" # 这个命令将终端输出到剪贴板
alias pp="pbpaste" #将剪贴板内容粘贴到终端。
alias ps="pwsh"

#设置node为nd

alias nd=node

# mysql开关
alias mo="mysql.server start"
alias mc="mysql.server stop"
alias mr="mysql.server restart"
alias plu="pip3 list --outdated"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export PATH="/usr/local/opt/gettext/bin:$PATH"



test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias cm="chmod" #chmod change mode 改变权限
alias ep="st $profile"
alias sp='export all_proxy=socks5://127.0.0.1:1086' #将socks5代理,添加别名 sp=>socks5proxy
alias di="dict"
#neofetch
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
alias dir="dirs -vp"
set_proxy(){
	export http_proxy=http://127.0.0.1:1087;
	export https_proxy=http://127.0.0.1:1087;
}
unset_proxy(){
	unset https_proxy;
	unset http_proxy;
}
alias hp=set_proxy #设置http代理 http_proxy hp
alias up=unset_proxy #不设置代理 up=unset proxy
#设置autosuggest
alias cman='man -M /usr/local/share/man/zh_CN'
alias p3=python3
alias wiki=wiki.py
alias say_chinese="say -v Mei-Jia"
alias sc=say_chinese
alias sae="say -v Tom"
alias mcd="macdown"
alias mb="matlab -nodisplay"
alias sm="nohup  matlab -desktop -nosplash -useStartupFolderPref  &"
