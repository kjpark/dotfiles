eval "$(starship init bash)"
eval "$(zoxide init bash)"

# kubectl completion
source /usr/share/bash-completion/bash_completion
source <(kubectl completion bash)
alias k="kubectl"
complete -o default -F __start_kubectl k

# nice to have
mkcd() { mkdir -p "$@" && cd "$@" ; }
