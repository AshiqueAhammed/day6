

echo "1.Celcius to Farenhite"
echo "2.Farenhite to Celcius"
read -p "Enter your choice:" choice
read -p "Enter the degree you want to convert:" degree
function conver() {
case "$choice" in
		1)
			if(( $degree>0 && $degree<100 ))
			then
				degf=`echo "scale=2; ($degree*9/5)+32" | bc`
				echo $degf
			else
				echo "INVALID"
			fi
				;;
		2)
			if(( $degree>32 && $degree<212 ))
			then
				degc=`echo "scale=2; ($degree-32)*5/9" | bc`
				echo $degc
			else
				echo "INVALID"
			fi
				;;
		*)
				echo "Default"
				;;
	esac
}

result=$(conver $choice $degree)
echo $result
