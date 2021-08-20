echo "enter a number"
read n
count=0
for (( i = 2 ; i < n ; i ++ ))
do
	mod=$(($n%$i))
	if  [ $mod == 0 ]
	then
		
		fact[count]=$i
		count=$(($count+1))
	fi
done
	echo "factors of that number are ::"
	echo "${fact[@]}"
	echo "prime factors of that number are ::"	
	for(( i = 0 ; i < count ; i ++ ))
	do
		if [ ${fact[i]} -eq 2 -o ${fact[i]} -eq 3 -o ${fact[i]} -eq 5 -o ${fact[i]} -eq 7 ]
		then
		echo "${fact[i]}"
		else
		echo " "
		fi
	done	
