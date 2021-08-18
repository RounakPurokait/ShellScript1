echo "enter number"
read n
m=2
pow=1
if [ $n == 0 ]
then
	echo "2^0 = 1"
else
	for(( i = 1 ; i <= n ; i ++ ))
	do
		pow=$(($pow*$m));
		echo "2^$i = $pow"
	done
		
fi

