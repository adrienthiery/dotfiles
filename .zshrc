# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_middle'
POWERLEVEL9K_MODE='awesome-patched'

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
plugins=(git)

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
#
# Customize to your needs...
alias ppa-add='echo "sudo add-apt-repository";sudo add-apt-repository '
alias ppa-remove='sudo add-apt-repository --remove"; sudo add-apt-repository --remove '

alias reboot='echo "sudo reboot"; sudo reboot'
alias update='echo "sudo apt-get update"; sudo apt-get update'
alias install='echo "sudo apt-get install"; sudo apt-get install'
alias upgrade='echo "*** sudo apt-get; sudo apt-get dist-upgrade"; sudo apt-get update; sudo apt-get dist-upgrade; echo "Terminée"'
alias dist-upgrade='echo "*** sudo apt-get; sudo apt-get dist-upgrade"; sudo apt-get update; sudo apt-get dist-upgrade; echo "Terminée"'

alias autoremove='echo "sudo apt-get autoremove --purge"; sudo apt-get autoremove --purge'

alias remove='echo "sudo apt-get autoremove --purge"; sudo apt-get autoremove --purge'

# Git aliases
alias g='git'
alias gsp='git stash && git pull --rebase && git stash pop'
alias gst='git status'
alias gp='git pull'
alias gap='git add -p'
alias gsth='git stash'
alias gsthp='git stash pop'
alias gph='git push'
alias gbra='git branch -a'
alias gbrd='git branch -d'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gclear='echo "Clearing remote branches refs"; git clear; echo "Clearing local branches"; git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'

source ~/.bashrc

# MacOS
alias mysqlstart='sudo launchctl load -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist'
alias mysqlstop='sudo launchctl unload -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist'

# Osedea projects
alias wim='cd ~/Projects/WIM/women-in-mind-front-end && atom . ~/Projects/WIM/women-in-mind-backend ~/Projects/WIM/chat-backend ~/Projects/WIM/wim-cookbooks'
alias wimbackend='cd ~/Projects/WIM/women-in-mind-backend'
alias wimchat='cd ~/Projects/WIM/chat-backend'
alias heyneighburz='cd ~/Projects/Hey\ Neighburz/ && atom hey-neighburz-app/ hey-neighburz-backend/ hey-neighburz-chat/ && cd hey-neighburz-app/'
alias heyneighburzbackend='cd ~/Projects/Hey\ Neighburz/hey-neighburz-backend/'
alias heyneighburzchat='cd ~/Projects/Hey\ Neighburz/hey-neighburz-chat/'
alias starter='cd ~/Projects/react-native-starter && atom . ../Components/ ../lucy_5.2'

# Docker
alias docker-clean='docker stop $(docker ps -qa) && docker rm $(docker ps -qa)'

# Homestead
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
