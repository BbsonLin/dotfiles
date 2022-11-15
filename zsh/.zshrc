# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # git,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="~/.local/bin/:$PATH"

alias zrc="vim ~/.zshrc"
alias omz="cd ~/.oh-my-zsh && ls ."

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Workspace alias
alias wksp='cd ~/Workspace/'

# Neovim
alias vim='nvim'

eval "$(oh-my-posh --init --shell zsh --config ~/.poshthemes/bbsonlin-server.omp.json)"
