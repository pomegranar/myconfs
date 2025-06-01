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
# ZSH_THEME="fino"

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
  export EDITOR='nvim'
fi

# Created by `pipx` on 2024-06-16 14:11:24
export PATH="$PATH:/Users/anar/.local/bin"
alias love="/Applications/love.app/Contents/MacOS/love"
alias spicom='picom --experimental-backends --config ~/.config/picom.conf > /dev/null 2>&1 & disown'

# alias python="/opt/homebrew/bin/python3"
alias python="/usr/bin/python3"
alias penv="source .venv/bin/activate"
alias see="bat -P --theme base16"
alias hdsleep="sudo hdparm -Y /dev/sda2"
alias edit="micro"
alias sql="mycli -u root -R '$fg[yellow]\u:\d ➤ '"
alias tree="tree -I env"
alias music="musikcube"
alias l="gols -c -s -T"
alias clock="Developer/clock/env/bin/python3 Developer/clock/clock.py"
alias tt="tt -notheme -quotes en"
alias icloud="cd /Users/anar/Library/Mobile\ Documents"
alias ytdl="yt-dlp --config-locations '/Users/anar/yt-dlp/config'"
alias gpnr="git pull --no-rebase"
alias ga="git add -A"
alias gc="git commit"
alias pip="pip3"
export PATH="$PATH:/Users/anar/Library/Python/3.9/bin"
# alias nvim="/opt/nvim-linux-x86_64/bin/nvim"
alias nv="$HOME/nvim"
alias lv="lvim"
alias bat="batcat"
alias gpu1="ssh pomegranar@10.201.8.233"
alias gpu2="ssh pomegranar@10.201.8.114"
alias gpu3="ssh pomegranar@10.200.14.82"
alias mcserve="cd /opt/minecraft/ && screen -S minecraft_server sudo java -Xmx2G -Xms2G -jar server.jar nogui"
alias clocc="tty-clock -B -t -c"
alias ff="fastfetch"

mc() {
  cd /opt/minecraft/ && sudo java -Xmx2G -Xms2G -jar server.jar nogui
}

# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /Users/anar/Developer/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
autoload -Uz compinit
compinit

zstyle ':completion:*:cd:*' tag-order '!' directories


# toilet -f emboss2 "macOS-ZSH"
# echo "QOTD:"&& fortune | toilet -f term
# echo "____"

# eval $(thefuck --alias)
export PATH=~/path/to/imgcat:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/dart/.config/zsh-autocomplete/zsh-autocomplete.plugin.zsh
alias vpnc="/opt/cisco/secureclient/bin/vpn -s < /home/dart/.config/vpnc.conf"
alias vpnd="/opt/cisco/secureclient/bin/vpn disconnect"
alias vpni="/opt/cisco/secureclient/bin/vpn"


export ANDROID_HOME=/opt/cmdline-tools 
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export GTK_THEME=Adwaita:dark
export GTK_APPLICATION_PREFER_DARK_THEME=1

eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"
