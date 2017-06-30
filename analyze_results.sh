#TODO
#!/bin/bash


in_file=$1

#TODO store saddle size too
counter=0
for f in SymmetricRandomZeroSum/9.txt; do
	echo $f
	result=$(sed -e 's/ /\n/g' $f | sort | uniq -c)
	for i in $result; do
		echo $i >> SymmetricRandomZeroSum/9_count.txt
	done
	#echo $result >> SymmetricRandomZeroSum/9_count.txt
	#echo \n >> SymmetricRandomZeroSum/9_count.txt

	tmp=$result
	sum=0
	for i in $tmp; do
		sum=$((sum+i))
		echo $sum
		echo $i
	done
	sum=$((sum-43))
	echo $sum
done

echo $sum #>> SymmetricRandomZeroSum/9_count.txt

sed -e 's/ /\n/g' SymmetricRandomZeroSum/3.txt | sort | uniq -c

