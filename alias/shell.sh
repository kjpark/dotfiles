# shell tools
alias cat="bat"
alias f5="exec $SHELL"
alias ls="exa"
alias ll="ls -l"
alias la="ls -la"
alias rm="rm -i"
alias vim="nvim"

# ergo keybinds
alias ..="cd .."
alias a="z"
alias ai="zi"
alias o="clear ;"
alias e="vim"
alias u="la"

# combo ergobinds
alias erc="e ~/.*rc" # "edit rc"
alias ou="o u"
alias ot="o t"
alias out="o t; u"
alias t="date \"+%H : %M\" | figlet | lolcat"
alias ut="la --sort newest"
alias uu="ll"
alias uut="ll --sort newest"