export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias tree='tree -C' # persistent colors don't work so

export COMMAND_LINE_INSTALL="true"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda3 5.0.1 installer
export PATH="/Users/jedidiahpark/anaconda3/bin:$PATH"

# Lines added by Udacity Git config
# Enable tab completion
source ~/git-completion.bash

# colors!
# green="\[\033[0;32m\]"
# blue="\[\033[0;34m\]"
# purple="\[\033[0;35m\]"
# reset="\[\033[0m\]"

source ~/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
# END git udacity

# This is a backup of my original $PS1
# \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$
# needed to add -> (__git_ps1 " (%s)")
# in order to get git prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[32m\]\$(__git_ps1)\[\033[m\]$ "
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin
