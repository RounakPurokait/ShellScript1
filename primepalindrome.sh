#!/bin/bash

echo "enter a number "
read n
m=$n
count=0
temp=0
for (( i=1 ; i<=n ; i++ ))
do
	mod=$(($n%$i))
	if [ $mod == 0 ]
	then 
		count=$(($count+1))
	fi
done



function checking()
{
if [ $1 == 2 ]
then
 	
	while [ $2 -gt 0 ]
	do
		j=$(($2%10))
		temp=$(($(($temp*10))+$j))
		$2=$2/10
	done
	if [ $1 == $3 ]
	then 
		echo "prime and palindrome"
	else
		echo "prime but not palindrome"
	fi
else
	if [ $1 == $3 ]
	then
		echo "not prime but palindrome"
	else
		echo "not prime and not palindrome"
	fi
fi
}

checking $temp $n $m
