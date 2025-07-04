# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
  export EDITOR='vim'
fi

if [[ -n "$SSH_CONNECTION" ]]; then
  export TERM=xterm-256color
fi

# Created by `pipx` on 2024-06-16 14:11:24
export PATH="$PATH:/Users/anar/.local/bin"
alias love="/Applications/love.app/Contents/MacOS/love"
alias spicom='picom --experimental-backends --config ~/.config/picom.conf > /dev/null 2>&1 & disown'
alias gitnuke='git fetch --prune && git reset --hard @{u} && git clean -fdx'

alias see="bat -P --theme base16"
alias hdsleep="sudo hdparm -Y /dev/sda2"
alias edit="micro"
alias sql="mycli -u root -R '$fg[yellow]\u:\d ➤ '"
alias tree="tree -I env"
alias music="musikcube"
alias l="gols -c -s -T"
alias la="gols -c -s -T -a"
alias clock="Developer/clock/env/bin/python3 Developer/clock/clock.py"
alias tt="tt -notheme -quotes en"
alias icloud="cd /Users/anar/Library/Mobile\ Documents"
alias ytdl="yt-dlp --config-locations '/Users/anar/yt-dlp/config'"
alias gpnr="git pull --no-rebase"
alias ga="git add -A"
alias gc="git commit"
export PATH="$PATH:/Users/anar/Library/Python/3.9/bin"
# alias nvim="/opt/nvim-linux-x86_64/bin/nvim"
alias nv="nvim"
alias lv="lvim"
# alias sv="NVIM_APPNAME=shinvim nvim"
# alias bat="batcat"
alias screenshot="sleep 2 && hyprshot -m region"
alias screenshot-window="sleep 2 && hyprshot -m window"
alias gpu1="ssh pomegranar@10.201.8.233"
alias gpu2="ssh pomegranar@10.201.8.114"
GPU3="pomegranar@10.200.14.82"
alias gpu3="ssh $GPU3"
alias mcserve="cd $HOME/Downloads/testing && sudo /usr/lib/jvm/java-21-openjdk/bin/java -jar fabric-server-launch.jar"
alias clocc="tty-clock -B -t -c"
alias ff="fastfetch"
alias dush="du -sh"
# export https_proxy=proxy-prod-dku.oit.duke.edu:3128
# export http_proxy=proxy-prod-dku.oit.duke.edu:3128


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
__conda_setup="$('/home/dart/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dart/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/dart/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dart/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.config/emacs/bin:$PATH"
alias dm='emacs -nw'

export PATH=$PATH:/home/dart/.cargo/bin


source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/dart/Developer/StrangersCode/zsh-autocomplete/zsh-autocomplete.plugin.zsh
alias vpnc="/opt/cisco/secureclient/bin/vpn -s < /home/dart/.config/vpnc.conf"
alias vpnd="/opt/cisco/secureclient/bin/vpn disconnect"
alias vpni="/opt/cisco/secureclient/bin/vpn"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export GTK_THEME=Adwaita:dark
export GTK_APPLICATION_PREFER_DARK_THEME=1

eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"
alias vpnc="/opt/cisco/secureclient/bin/vpn -s < /home/dart/.config/vpnc.conf"
alias vpnd="/opt/cisco/secureclient/bin/vpn disconnect"
alias vpni="/opt/cisco/secureclient/bin/vpn"
export PATH="$PATH:$HOME/.npm-global/bin"


export HF_ENDPOINT=https://hf-mirror.com

alias pipkag-serve="CUDA_VISIBLE_DEVICES=0 python3 -m sglang.launch_server --model-path chengpingan/PIP-KAG-7B --port 8005 --context-length 8192 --lora-paths --log-level DEBUG --max-loras-per-batch 0 --disable-cuda-graph"

