# alias manager
# WIP

# checks for programs before assigning aliases

# should i be using functions for everything instead?
# https://www.gnu.org/software/bash/manual/bash.html#Aliases

#
# SCRIPT START
#

# get list of files
# sort each file
# report
# load good
# cleanup

OK_PATH="/tmp/OK.alias"
ERR_PATH="/tmp/ERR.alias"
touch $OK_PATH
touch $ERR_PATH

# (alias line) -> bool
check_line () {
  # BUG: `tr` naive impl
  local cmd=$(echo "$1" | cut -d "=" -f 2 | tr -d \"\')
  # no quotes to grab first WORD only
  command -v $cmd &> /dev/null
}

# (alias file) -> good/bad aliases files
check_file () {
  local input="./terraform.sh" # hardcoded 4 now
  # [ -n "$line" ] to scan files that don't end with `\n`
  while IFS="" read -r line || [ -n "$line" ]; do
    if check_line "$line"; then
      # load alias now to validate dependent aliases
      # alias tf="terraform"
      # alias tfp="tf plan"
      eval "$line"
      echo "$line" >> $OK_PATH
    else
      echo "$line" >> $ERR_PATH
    fi
  done < "$input"
}

cleanup () {
  command rm $OK_PATH
  command rm $ERR_PATH
}

check_file
echo OK:
cat $OK_PATH
echo ERR:
cat $ERR_PATH
cleanup