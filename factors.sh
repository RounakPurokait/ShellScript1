echo "enter  any number "
read n
echo "prime factors are "
for (( i = 2 ; n > 1 ; i ++ )) 
do
	mod=$(($n%$i))
	while [ $mod -eq 0 ]
	do
		echo " $i "
		n=$(($n/$i))
	done
done
