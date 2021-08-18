echo "enter any number"
read n
count=0

for (( i = 1 ; i <= n ; i ++ ))
do
	mod=$(($n%$i))

	if [ $mod == 0 ]
	then
		count=$(($count+1))
			
	else
		echo " "
	fi
done
	
	if [ $count == 2 ]
	then
		echo "its prime"
	else
		echo "its not prime"
	fi
 
