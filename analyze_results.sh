#TODO
#!/bin/bash


i=$1

#TODO store saddle size too
counter=0
for f in SymmetricRandomZeroSum/10.txt; do
	sed -e 's/ /\n/g' $f | sort -n | uniq -c | sed -e 's/ *\([0-9]*\) \([0-9]*\)/\2 \1/g' #>> 10_counter.txt
	echo $f
	result=$(sed -e 's/ /\n/g' $f | sort -n | uniq -c)
	echo $result

	flag=0
	for i in $result; do
		#if [[ $flag == 0 ]]; then
		#	echo "0"
		#fi
		echo $i

	done
	#for i in $result; do
		#echo $i >> SymmetricRandomZeroSum/9_count.txt
	#done
	#echo $result >> SymmetricRandomZeroSum/9_count.txt
	#echo \n >> SymmetricRandomZeroSum/9_count.txt

	tmp=$result
	sum=0
	for i in $tmp; do
		sum=$((sum+i))
		#echo $sum
		#echo $i
	done
	sum=$((sum-43))
	#echo $sum
done

#echo $sum #>> SymmetricRandomZeroSum/9_count.txt

#sed -e 's/ /\n/g' SymmetricRandomZeroSum/12.txt | sort -n | uniq -c
#sed -e 's/ /\n/g' /home/accxev/Dropbox/MasterThesis/SaddleScripts/GAMUT/games/counters_from_GG/12.txt | sort | uniq -c

