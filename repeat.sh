count=0
for (( i = 0 ; i < 100 ; i ++ ))
do
	mod=$(($i%11))
	if [ $mod -eq 0 -a $i -ne 0 ]
	then
		repeat[$count]=$i
		count=$(($count+1))
	else
		echo " "
	fi
done
	echo "${repeat[@]}"

