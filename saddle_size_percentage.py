''' 
small script that computes the probabilities of a game of size m having a strict saddle of a certain size
does so by analyzing the results of SaddlePy
'''
import sys
import math
import numpy as np


def binomial_coefficient(n,k):
	#n!/k!(n-k)!
	return math.factorial(n) / (math.factorial(k)*math.factorial(n-k))

def percentage_nasheq(size_game, size_support):
	#print "Compute percentage of Nash equlibria of size " + str(size_support) + " in games of size " + str(size_game)
	if (size_support % 2 == 0):
		return 0
	else:
		return binomial_coefficient(size_game, size_support)*math.pow(2, -(size_game - 1))

def compute_all_percentages(size_game):
	for i in range(1,size_game+1):		
		print str(i) + ": " + str(percentage_nasheq(size_game, i))


def	convert_rel_saddlesizes(list):
	for i in list:
		print i

def write_relative_to_file(list):

	convert_rel_saddlesizes(list)
	print "Party!!"
	return None



if __name__ == '__main__':

	filename = sys.argv[1]

	with open(filename, 'r') as in_file:
		counter = 0
		file_content = in_file.read()
		file_list = file_content.split()
		counter_list = [0]*101
		for i in file_list:
			counter_int = int(i)
			counter_list[counter_int] = counter_list[counter_int]+1
			counter=counter+1
			
			#print i

		counter_list_relative = [0]*101
		for i,x in enumerate(counter_list): 
		#for i,x in counter_list:
			#print i
			#print x
			#index = counter_list.index(i)
			counter_list_relative[i] = float(x) / float(counter)

	print counter_list
	print counter
	print counter_list_relative

	write_relative_to_file(counter_list_relative)
	#print file_content

	#for i in range(2,m+1):
	#	print "Percentages for game size " + str(i)
	#	compute_all_percentages(i)
	#	print ""


