for (( i = 0 ; i < 9 ; i ++ ))
do 
	random=$(($((RANDOM%100))+100))
	sort[i]=$random
done
echo " original array ${sort[@]}"
for ((i = 0; i<10; i++))
do
      
    for((j = 0; j<10-i-1; j++))
    do
         J=$(($j+1))
        if [ ${sort[j]} -gt ${sort[J]} ]
        then
            
            temp=${sort[j]}
            sort[$j]=${sort[J]}  
            sort[$J]=$temp
        fi
    done
done
  
echo "second largest and second smallest number is ${sort[8]} and ${sort[1]} respectively"
