#!/bin/bash
# arith-tests.sh
# Arithmetic tests.
# The (( ... )) construct evaluates and tests numerical expressions.
# Exit status opposite from [ ... ] construct!
(( 0 ))
echo "Exit status of \"(( 0 ))\" is $?." #1

(( 1 ))
echo "Exit status of \"(( 1 ))\" is $?." #0

(( 5 > 4 ))
echo "Exit status of \"(( 5 > 4 ))\" is $?." #0

(( 5 > 9 ))
echo "Exit status of \"(( 5 > 9 ))\" is $?." #1

(( 5 == 5 ))
echo "Exit status of \"(( 5 == 5 ))\" is $?." #0

# (( 5 = 5 ))  gives an error message.
(( 5 - 5 ))
echo "Exit status of \"(( 5 - 5 ))\" is $?." #1

(( 5 / 4 ))
echo "Exit status of \"(( 5 / 4 ))\" is $?." #0

(( 1 / 2 ))
echo "Exit status of \"(( 1 / 2 ))\" is $?." #1

(( 1 / 0 )) 2>/dev/null
#           ^^^^^^^^^^^
echo "Exit status of \"(( 1 / 0 ))\" is $?." #1
# What effect does the "2>/dev/null" have?
# What would happen if it were removed?
# Try removing it, then rerunning the script.

# ======================================= #
# (( ... )) also useful in an if-then test.
var1=5
var2=4
if (( var1 > var2 ))
then #^      ^      Note: Not $var1, $var2. Why?
  echo "$var1 is greater than $var2"
fi     # 5 is greater than 4
exit 0
#1
#0
# true #0
# false #1
# true # 0
#0 #1
# Division o.k. #0
# Division result < 1. # Rounded off to 0. #1
# Illegal division by 0. #1
