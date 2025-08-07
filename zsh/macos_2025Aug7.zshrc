# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(timer)

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

export PATH="$PATH:$(yarn global bin)"

export PATH="$PATH:/Users/anar/.local/bin"
alias love="/Applications/love.app/Contents/MacOS/love"
alias penv="source .venv/bin/activate"
alias gitnuke='git fetch --prune && git reset --hard @{u} && git clean -fdx'
alias dm='emacsclient -nw -c -a ""'
alias see="bat -P --theme base16"
alias edit="micro"
alias sql="mycli -u root -R '$fg[yellow]\u:\d ➤ '"
alias tree="tree -I env --gitignore"
alias music="musikcube"
alias l="gols -c -s -T"
alias la="gols -c -s -T -a"
alias clock="Developer/clock/env/bin/python3 Developer/clock/clock.py"
alias tt="tt -notheme -quotes en"
alias cs="cd /Users/anar/Developer/cs310/cs310-Group-Project"
alias icloud="cd /Users/anar/Library/Mobile\ Documents"
alias ytdl="yt-dlp --config-locations '/Users/anar/yt-dlp/config'"
alias gpnr="git pull --no-rebase"
alias ga="git add -A "
alias gc="git commit"
alias gcm="git commit -m "
alias math="cd /Users/anar/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/DKU-iCloud/MATH_202"
alias vpnc="/opt/cisco/anyconnect/bin/vpn -s < vpn.conf"
alias vpn="sudo /opt/cisco/anyconnect/bin/vpn"
alias nv="nvim"
alias lv="lvim"
alias clocc="tty-clock -d 0.5 -s -c -t"
export PATH="$PATH:/Users/anar/Library/Python/3.9/bin"
export BAT_THEME="base16"
alias icat="kitten icat"
alias dush="du -sh"
alias ff="fastfetch"
alias pomochat="cd $HOME/Developer/pomochat/ && ./querydb.py 'An undergraduate student class of 2027 named Anar.'"

# SHORTCUTS
alias chatdku="cd ~/Developer/ChatDKU/chatdku/"
alias cdfe="cd /Users/anar/Developer/ChatDKU/chatdku/chatdku/frontend/"
alias gpu1="ssh pomegranar@10.201.8.233"
alias gpu2="ssh pomegranar@10.201.8.114"
alias gpu3="ssh pomegranar@10.200.14.82"
alias mint="ssh dart@10.203.44.97"
GPU3="pomegranar@10.200.14.82"
FEDORA="dart@10.203.50.37"


source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/anar/Developer/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh


zstyle ':completion:*:cd:*' tag-order '!' directories


eval "$(starship init zsh)"

# eval $(thefuck --alias)
export PATH=~/path/to/imgcat:$PATH


alias vpnc="/opt/cisco/anyconnect/bin/vpn -s < /Users/anar/.config/vpnc.conf"
alias vpnd="/opt/cisco/anyconnect/bin/vpn disconnect"
alias vpni="/opt/cisco/anyconnect/bin/vpn"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
alias vpnc="/opt/cisco/secureclient/bin/vpn -s < /Users/anar/.config/vpnc.conf"
alias vpnd="/opt/cisco/secureclient/bin/vpn disconnect"
alias vpni="/opt/cisco/secureclient/bin/vpn"


autoload -Uz compinit
compinit

# export HF_ENDPOINT=https://hf-mirror.com

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anar/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anar/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/anar/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anar/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/Users/anar/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/Users/anar/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
#
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"



