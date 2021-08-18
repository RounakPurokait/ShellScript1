echo "enter a number"
read n
i=1
pow=1
while [ $i -le $n ]
do
	pow=$(($pow*2))
	if [ $pow -le 256 ]
	then
		echo "2^$i = $pow"
	fi
	i=$(($i+1))
done  
