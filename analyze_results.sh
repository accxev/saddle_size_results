#TODO
#!/bin/bash


in_file=$1

#TODO store saddle size too
counter=0
for f in SymmetricRandomZeroSum/9.txt; do
	echo $f
	result=$(sed -e 's/ /\n/g' $f | sort | uniq -c)
	echo $result

	tmp=$result
	sum=0
	for i in $tmp; do
		sum=$((sum+i))
		echo $sum
		echo $i
	done
	sum=$((sum-))
done

sed -e 's/ /\n/g' SymmetricRandomZeroSum/3.txt | sort | uniq -c

