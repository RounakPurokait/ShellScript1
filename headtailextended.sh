head=0
tail=0
while [[ $head -lt 11 && $tail -lt 11 ]]
do
	toss=$((RANDOM%2))
	if [ $toss == 0 ]
	then
		echo "head"
		head=$(($head+1))
	else
		echo "tail"
		tail=$(($tail+1))
	fi
done 
 if [ $head -gt $tail ]
then
	echo "head wins"
	echo "head = $head and tail = $tail"
else
	 echo "tail wins"
        echo "head = $head and tail = $tail"
fi
