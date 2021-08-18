echo " which conversion do you want "
echo "1. celsius to fahrenheit"
echo "2. fahrenheit to celsius"
echo "enter temperature"
read t
	case $t in
		1)
		echo "enter temp in celsius"
		read c
		f=$(($(($(($c*9))/5))+32))
		echo $f
		check $f
		;;
		2)
		echo "enter temp in fahrenheit"
		read far
		cel=$(($(($(($f-32))*5))/9))
		echo $cel
		check $cel
		;;
		*)
		echo "wrong"
		;;
	esac
	

	
function check()
{
	if [ $1 -ge 0 -a $1 -lt 99 ]
	then
		echo "within freezing"
	elif [ $1 -le 0 ]
	then
		echo "below freezing"
	else
		echo "beyond boiling"
	fi
	
	if  [ $2 -ge 32 -a $2 -lt 212 ]
	then 
		echo "within freezing"
	elif [ $2 -le 32 ]
	then
		echo "below freezing"
	else
		echo " beyond boiling" 
	fi
}
	
check $cel $f
