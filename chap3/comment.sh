#! /bin/bash

# This line is a comment.

echo "A comment will follow." # Comment here.
#                            ^ Note whitespace before #

     # A tab precedes this comment.

initial=( `cat "$startfile" | sed -e '/#/d' | tr -d '\n' |\
# Delete lines containing '#' comment character.
    sed -e 's/\./\. /g' -e 's/_/_ /g'` )
# Excerpted from life.sh script

echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.

echo ${PATH}          # cfguo: below is to drop a prefix, to see the exmaple below
# /usr/local/bin:/usr/local/:/usr/local/sbin::/home/cfguo/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#                /usr/local/:/usr/local/sbin::/home/cfguo/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
echo ${PATH#*:}       # Parameter substitution, not a comment.
echo $(( 2#101011 ))  # Base conversion, not a comment.

# Thanks, S.C.
