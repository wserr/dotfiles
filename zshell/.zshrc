# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git nvm alias-finder web-search zsh-interactive-cd zsh-autosuggestions docker-compose colorize)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VISUAL=nvim

# General aliases
alias vim=nvim
alias vi=nvim
alias k="kubectl"


alias docs="cd ~/repos/documentation && vim ."

# Proceedix specific aliases
# alias wiki="cd ~/repos/Proceedix%20General.wiki/ && vim ."
# 
# alias dots="cd ~/repos/dotfiles && vim ."
# 
# alias devops="cd ~/repos/devops-notes && vim ."
# alias proceedix="cd ~/repos/proceedix && vim ."
# 
# alias portal="cd ~/repos/service-admin-portal && vim ."
# alias backend="cd ~/repos/api-v3 && vim ."

# alias sgreportal="cd ~/repos/sgre-portal && vim ."
# alias sgrebackend="cd ~/repos/sgre-as-backend-services && vim ."

# export DOTNET_ROOT=$HOME/dotnet
# export PATH=$PATH:$HOME/dotnet
# export DOCKER_CONFIG=$HOME/.docker
