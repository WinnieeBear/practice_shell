#1. (()) and let
(( 0 && 1 ))
echo $? #1 *** # And so ...

let "num = (( 0 && 1 ))" echo $num #0
# But ...
let "num = (( 0 && 1 ))" echo $? #1 ***

(( 200 || 11 ))
echo $? #0 ***

# ...
let "num = (( 200 || 11 ))" echo $num #1
let "num = (( 200 || 11 ))" echo $? # 0 ***

(( 200 | 11 ))
echo $? # 0

# ...
let "num = (( 200 | 11 ))"
echo $num # 203
let "num = (( 200 | 11 ))"
echo $? # 0
# The "let" construct returns the same exit status
#+ as the double-parentheses arithmetic expansion.


#2. tests
# again, note that the exit status of an arithmetic expression is not an error value.
var=-2 && (( var+=2 ))
echo $?                   # 1
var=-2 && (( var+=2 )) && echo $var
                          # Will not echo $var!


#3. if can test command not only square brackets
if cmp a b &> /dev/null #supress output
then echo "Files a and b are indentical"
else echo "Files a and b differ"
fi

# The very useful 'if-grep' command
if grep -q Bash file # q means quiet,search Bash from file
then echo "File contains at least one occurence of Bash"
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
then echo "$letter_sequence found in $word"
else echo "$letter_sequence not found in $word"
fi

if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
then echo "Command succeed"
else echo "Command failed"
fi
