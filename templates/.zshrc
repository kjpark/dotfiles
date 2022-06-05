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
