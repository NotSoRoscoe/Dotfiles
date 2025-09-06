#fzf config to be shared across WSL and Arch

if grep -qi microsoft /proc/version 2>/dev/null; then
    # on WSL ubuntu
    FZF_PATH="/usr/share/doc/fzf/examples"
else
    # I'm on Arch btw
    FZF_PATH="/usr/share/fzf"
fi

# Use fd listing files
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Appereances + previews
export FZF_DEFAULT_OPTS='
    --height=40% 
    --layout=reverse
    --border 
    --info=inline
    --preview-window=up,80%,border,nowrap
'

# Source Keybinds and Completions
if [[ -r "$FZF_PATH/key-bindings.zsh" ]]; then
    source "$FZF_PATH/key-bindings.zsh"
fi
if [[ -r "$FZF_PATH/completion.zsh" ]]; then
    source "$FZF_PATH/completion.zsh"
fi

bindkey -M viins '^T' fzf-file-widget
bindkey -M viins '^R' fzf-history-widget
bindkey -M viins '^G' fzf-cd-widget
