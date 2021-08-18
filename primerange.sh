echo "enter lower limit"
read n
echo "enter upper limit"
read m
lim=$(($(($m-$n))+1))
count=0

echo "prime numbers present within the range are :"
for (( i = n ; i <= m ; i ++ ))
do
	for (( j = 1 ; j <= i ; j ++ ))
	do
		mod=$(($i%$j))
		if [ $mod -eq 0 ]
		then
			count=$(($count+1))
				
		fi
		
	done
		if [ $count -eq 2 ]
		then
			echo $i
		fi
done
