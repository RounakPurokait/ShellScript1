echo "enter any number"
read n
m=$n
factorial=1
for (( i = 1 ; i < m ; i++))
do
	fac=$(($n*1))
	n=$(($n-1))
	factorial=$(($fac*$factorial))
	

done

echo "$factorial"

