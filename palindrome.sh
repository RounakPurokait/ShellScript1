echo "enter number"
read n
temp=0
m=$n
while [ $n -gt 0 ]
do 
	i=$(($n%10))
	temp=$(($(($temp*10))+$i))
	n=$(($n/10))
done
echo "the reverse of n is $temp"
palindrome $m $temp

function palindrome()
{
	if [ $1 == $2 ]
	then 
		echo "palindrome"
	else
		echo "not palindrome"
	fi
}
 

