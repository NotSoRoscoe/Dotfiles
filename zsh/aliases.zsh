alias mysource="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias edalias="vim ~/.config/zsh/aliases.zsh"
alias gitconf="vim ~/.gitconfig"
alias tmuxconf="vim ~/.tmux.conf"
alias gs="git status"
alias gb="git branch"

if [ -f "~/.config/zsh/local_alliases.zsh" ]; then
    source ~/.config/zsh/local_alliases.zsh
    alias edlocalalias="vim ~/.config/zsh/local_alliases.zsh"
fi

