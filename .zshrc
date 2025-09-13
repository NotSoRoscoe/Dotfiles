# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:/usr/bin:$HOME/bin:$HOME/.local/bin:$HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# --- OMZ Setup ---
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 90

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.config/zsh

plugins=(git)

# setopt PROMPT_SUBST
source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/fzf.zsh
source $ZSH_CUSTOM/aliases.zsh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
fi

bindkey -v
bindkey -M viins 'kj' vi-cmd-mode

export COLORTERM=truecolor
export PATH="$HOME/.cargo/bin:$PATH"
