# alias manager
# WIP

# checks for programs before assigning aliases

# should i be using functions for everything instead?
# https://www.gnu.org/software/bash/manual/bash.html#Aliases

## potential solutions
# - resolves dependencies by filename
#   - ie for "git.sh" to be run, `git` must be installed
#   - cons: err prone, hard to extend (multi-program aliases)
# - deps declared in each alias
#   - cons: adds complexity / maintennance / err prone
# - automatically checks for working aliases
#   - ie: try $alias, if good, then do it
#   - for every line in each file
#     - if ERR, do not assign alias
#   - cons: performance?

## chosen solution:
# check that alias works, then enable it
# - CHALLENGE: verification
#   - executing to verify may cause side fx
#     - ie testing `alias hehe="sudo rm -rf /"` is bad
#     - could just verify the underlying first command exists
#   - so pretty much test if cmd exists, that's it

#
# SCRIPT START
#

# set -x

# gets underlying cmd from alias definition
get_cmd () {
  echo "$1" | cut -d "=" -f 2 | tr -d \"\'
}

test_cmd () {
  echo "test"
}

main () {
  while read -r line
  do
    if command -v $(get_cmd "$line") &> /dev/null ; then
      echo "PASS $line"
    else
      echo "FAIL $line"
    fi
  done < "$input"
}

input="./git.sh"
echo TESTING:
echo

main