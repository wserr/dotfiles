# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="junkfood"

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
plugins=(git nvm zsh-interactive-cd zsh-autosuggestions docker colorize colored-man-pages)

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim

# General aliases
alias vim=nvim
alias vi=nvim
alias k="kubectl"


alias docs="cd ~/repos/documentation && vim ."

alias term="nvim --cmd :terminal"

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
# export DOCKER_CONFIG=$HOME/.docker
#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
