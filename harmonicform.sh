echo "enter number"
read n
h=0
echo "harmonic form looks like : H = "
for (( i = 1 ; i <= n ; i ++ ))
do
	echo "	1/$i +	"
	h=$(($h+$((1/$i))))
done
	echo "the value of H is = $h approx "

