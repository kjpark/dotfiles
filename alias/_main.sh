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

ALIAS_DIR="."
OUT_PATH="/tmp/alias"

main () {
  setup
  parse_files
  report
}

#
# logic
#

parse_files () {
  for f in "$ALIAS_DIR"/*; do
    check_file "$f"
  done
}

is_alias () {
  # naive determine if line is an alias def
  [ "alias" = "$(echo "$1" | command cut -c 1-5)" ]
}

# (alias line) -> bool
check_line () {
  # BUG: `tr` naive impl
  local cmd=$(echo "$1" | cut -d "=" -f 2 | tr -d \"\')
  # no quotes to grab first word only
  command -v $cmd &> /dev/null
}

# (alias file) -> good/bad aliases files
check_file () {
  local input="$1"

  # [ -n "$line" ] to scan files that don't end with `\n`
  while IFS="" read -r line || [ -n "$line" ]; do
    if ! is_alias "$line"; then continue; fi
    if check_line "$line"; then
      # load alias now to validate dependent aliases
      # alias tf="terraform"
      # alias tfp="tf plan"
      command eval "$line"
      command echo "$line" >> "$aliases"
    else
      command echo "$line" >> "$errors"
    fi
  done < "$input"
}

#
# lifecycle
#

aliases="${OUT_PATH}/aliases"
errors="${OUT_PATH}/errors"

setup () {
  command mkdir -p "$OUT_PATH"
  command echo "" > "$aliases"
  command echo "" > "$errors"
}

report () {
  command echo OK
  command cat "$aliases"
  command echo
  command echo ERR
  command cat "$errors"
}

#
#
#

main