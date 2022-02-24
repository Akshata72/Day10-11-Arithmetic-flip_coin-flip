
read -p"Enter a input a:" a
read -p"Enter a input b:" b
read -p"Enter a input c:" c

echo $a"+"$b"*"$c"="$((($a+$b)*$c))

echo $a"*"$b"+"$c"="$(($a*$b+$c))

echo $c"+"$a"/"$b"="$((($c+$a)/$b))

echo $a"%"$b"+"$c"="$((($a%$b)+$c))

#store dictionary 
arithmetic[am]="((($a+$b)*$c))"
arithmetic[ma]="(($a*$b+$c))"
arithmetic[ad]="((($c+$a)/$b))"
arithmetic[pa]="((($a%$b)+$c))"

echo ${arithmetic[@]}


#read from dictionary to array
arithmetic[0]=${arithmetic[am]}
arithmetic[1]=${arithmetic[ma]}
arithmetic[2]=${arithmetic[ad]}
arithmetic[3]=${arithmetic[pa]}
echo ${arithmetic[@]}


#sorting descending order
echo "before sorting: " ${arithmetic[@]}
	for((i=0;i<=3;i++))
	do
		for((j=i+1;j<=3;j++))
		do
			if(( ${arithmetic[i]} < ${arithmetic[j]}))
			then
				temp=${arithmetic[i]}
				arithmetic[$i]=${arithmetic[j]}
				arithmetic[$j]=$temp
			fi
		done
	done
echo "after soting:" ${arithmetic[@]}

