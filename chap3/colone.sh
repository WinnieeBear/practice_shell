#! /bin/bash
: ${HOSTNAME?} ${USER?} ${MAIL?}
#  Prints error message
#+ if one or more of essential environmental variables not set.

: ${username=`whoami`}
# ${username=`whoami`}   Gives an error without the leading :
#                        unless "username" is a command or builtin...

: ${1?"Usage: $0 ARGUMENT"}     # From "usage-message.sh example script.
# if not provide the parameter it will throw error

: > data.xxx   # File "data.xxx" now empty.	      

# Same effect as   cat /dev/null >data.xxx
# However, this does not fork a new process, since ":" is a builtin.

:()
{
  echo "The name of this function is "$FUNCNAME" "
  # Why use a colon as a function name?
  # It's a way of obfuscating your code.
}

:

not_empty ()
{
  :
} # Contains a : (null command), and so is not empty.


#below is exmaple, can not run
# place holder
if condition
then :   # Do nothing and branch ahead
else     # Or else ...
   take-some-action
fi

# : means true
while :
do
   operation-1
   operation-2
   ...
   operation-n
done
# Same as:
#    while true
#    do
#      ...
#    done