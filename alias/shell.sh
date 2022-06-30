# shell tools
alias cat="bat"
alias ls="exa"
alias ll="ls -l"
alias la="ls -la"

alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

alias f5="exec $SHELL"
alias vim="nvim"
alias br="printf '\n\n' ;"

# ergo keybinds
alias ..="cd .."
alias z="zoxide" # hack bc `z` is `eval` at runtime in .*rc
alias a="z"
alias ai="zi"
alias o="clear ;"
alias e="vim"
alias u="la"

# combo ergobinds
alias erc="e ~/.*rc" # "edit rc"
alias ok="o t; u; echo; git status --short 2> /dev/null"
alias ou="o u"
alias t="date \"+%H : %M\" | figlet | lolcat"
alias ut="la --sort newest"
alias uu="ll"
alias uut="ll --sort newest"
