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



if __name__ == '__main__':

	filename = sys.argv[1]

	with open(filename, 'r') as in_file:
		file_content = in_file.read()

	print file_content

	#for i in range(2,m+1):
	#	print "Percentages for game size " + str(i)
	#	compute_all_percentages(i)
	#	print ""

