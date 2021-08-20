n=$((RANDOM%7))
if [ $n -eq 0 ]
then
	$n=1
fi
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A dice 
while [ $count1 -eq 10 -a $count2 -eq 10 -a $count3 -eq 10 -a $count4 -eq 10 -a $count5 -eq 10 -a $count6 -eq 10 ]
do
	if [ $n == 1 ]
	then 
		count1=$(($count1+1))
	elif [ $n == 2 ]
        then
                count2=$(($count2+1))
	elif [ $n == 3 ]
        then
                count3=$(($count3+1)) 
	elif [ $n == 4 ]
        then
                count4=$(($count4+1))
	elif [ $n == 5 ]
        then
                count5=$(($count5+1))
	else 
        	count6=$(($count6+1))
	fi
done

dice[0]=$count1
dice[1]=$count2
dice[2]=$count3
dice[3]=$count4
dice[4]=$count5
dice[5]=$count6

echo "${dice[@]}"

if [ $count1 -gt $count2 -a $count1 -gt $count3 -a $count1 -gt $count4 -a $count1 -gt $count5 -a $count1 -gt $count6 ]
then
	echo "max= $count1"
elif [ $count2 -gt $count1 -a $count2 -gt $count3 -a $count2 -gt $count4 -a $count2 -gt $count5 -a $count2 -gt $count6 ]
then
        echo "max= $count2"
elif [ $count3 -gt $count1 -a $count3 -gt $count2 -a $count3 -gt $count4 -a $count3 -gt $count5 -a $count3 -gt $count6 ]
then
        echo "max= $count3"
elif [ $count4 -gt $count2 -a $count4 -gt $count3 -a $count4 -gt $count1 -a $count4 -gt $count5 -a $count4 -gt $count6 ]
then
        echo "max= $count4"
elif [ $count5 -gt $count2 -a $count5 -gt $count3 -a $count5 -gt $count4 -a $count5 -gt $count1 -a $count5 -gt $count6 ]
then
        echo "max= $count5"
else
        echo "max= $count6"
fi



if [ $count1 -lt $count2 -a $count1 -lt $count3 -a $count1 -lt $count4 -a $count1 -lt $count5 -a $count1 -lt $count6 ]
then
        echo "min= $count1"
elif [ $count2 -lt $count1 -a $count2 -lt $count3 -a $count2 -lt $count4 -a $count2 -lt $count5 -a $count2 -lt $count6 ]
then
        echo "min= $count2"
elif [ $count3 -lt $count1 -a $count3 -lt $count2 -a $count3 -lt $count4 -a $count3 -lt $count5 -a $count3 -lt $count6 ]
then
        echo "min= $count3"
elif [ $count4 -lt $count2 -a $count4 -lt $count3 -a $count4 -lt $count1 -a $count4 -lt $count5 -a $count4 -lt $count6 ]
then
        echo "min= $count4"
elif [ $count5 -lt $count2 -a $count5 -lt $count3 -a $count5 -lt $count4 -a $count5 -lt $count1 -a $count5 -lt $count6 ]
then
        echo "min= $count5"
else
        echo "min= $count6"
fi
