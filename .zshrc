# shell tools
alias ls="exa"
alias ll="ls -l"
alias la="ls -la"
alias cat="bat"
alias rm="rm -i"
alias f5="exec $SHELL"

# ergo keybinds
alias ..="cd .."
alias a="z"
alias ai="zi"
alias o="nvim"
alias e="clear;"
alias u="la"
alias ut="la --sort newest"
alias uu="ll"
alias uut="ll --sort newest"
alias t="date \"+%H : %M\" | figlet | lolcat"

# program shorts
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gs="git status"
alias glc="git log | cat"
alias glt="git log --graph --decorate --oneline"
alias py="python3"
alias d="docker"
alias k="kubectl"
alias kg="kubectl get"
alias tf="terraform"
alias tfe="tfenv"

alias ez="o ~/.zshrc"

# enable vim bindings
bindkey -v
# fix broken backspace after entering INSERT mode
bindkey "^?" backward-delete-char 

# case insensitive path-completion
# https://scriptingosx.com/2019/07/moving-to-zsh-part-5-completions/
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
autoload -Uz compinit && compinit

# external programs
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
