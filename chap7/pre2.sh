decimal=15
octal=017 # = 15 (decimal)
hex=0x0f # = 15 (decimal)

# false in single square brackets
if [ "$decimal" -eq "$octal" ]
then
    echo "$decimal equals $octal"
else
    echo "$decimal is not equals $octal"
fi

# true in double squre brackets
if [[ "$decimal" -eq "$octal" ]]
then
    echo "$decimal equals $octal"
else
    echo "$decimal is not equals $octal"
fi

dir=/home/root
if cd "$dir" 2>/dev/null; then
    echo "now in $dir"
else
    echo "Can't change to $dir"
fi

var1=20
var2=22
[ "$var1" -ne "$var2" ] && echo "$var1 is not equal to $var2"

home=/home/root
[ -d "$home" ] || echo "$home does not exist"
