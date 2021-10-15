if status is-interactive
    # Commands to run in interactive sessions can go here
end

# shell tools
alias ls="exa"
alias ll="ls -l"
alias la="ls -la"
alias cat="bat"
alias rm="rm -i"

# ergo keybinds
alias e="clear"
alias u="la"
alias uu="ll"
alias o="date \"+%H : %M\" | figlet | lolcat"
alias a="z"
alias ai="zi"

# program shorts
alias g="git"
alias gst="git status"
alias d="docker"
alias k="kubectl"

alias ef="vim ~/.config/fish/config.fish"

zoxide init fish | source
starship init fish | source
