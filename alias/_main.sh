# alias manager
# WIP

# checks for programs before assigning aliases

# should i be using functions for everything instead?
# https://www.gnu.org/software/bash/manual/bash.html#Aliases

# get list of files
# sort each file
# report
# load good
# cleanup

#
# SCRIPT START
#

OK_PATH="/tmp/OK.alias"
ERR_PATH="/tmp/ERR.alias"

main () {
  setup
  check_file
  report
  teardown
}

#
# logic
#

# (alias line) -> bool
check_line () {
  # BUG: `tr` naive impl
  local cmd=$(echo "$1" | cut -d "=" -f 2 | tr -d \"\')
  # no quotes to grab first word only
  command -v $cmd &> /dev/null
}

# (alias file) -> good/bad aliases files
check_file () {
  local input="./misc.sh" # hardcoded 4 now
  # [ -n "$line" ] to scan files that don't end with `\n`
  while IFS="" read -r line || [ -n "$line" ]; do
    if check_line "$line"; then
      # load alias now to validate dependent aliases
      # alias tf="terraform"
      # alias tfp="tf plan"
      command eval "$line"
      command echo "$line" >> $OK_PATH
    else
      command echo "$line" >> $ERR_PATH
    fi
  done < "$input"
}

#
# lifecycle
#

setup () {
  check_path () {
      if [ -e "$1" ]; then
        command echo "ERR: $OK_PATH is not empty; aborting"
        command exit 1
      fi
  }
  check_path $OK_PATH
  check_path $ERR_PATH
  command touch $OK_PATH
  command touch $ERR_PATH
}

report () {
  command echo OK
  command cat $OK_PATH
  command echo ERR
  command cat $ERR_PATH
}

teardown () {
  command rm $OK_PATH
  command rm $ERR_PATH
}

#
#
#

main