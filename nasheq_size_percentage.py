''' 
small script that computes the probabilities of a game of size m having a Nash equilibrium of a certain support size
'''
import sys
import math


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
	eq_list = []
	for i in range(1,size_game+1):
		eq_list.append(float(percentage_nasheq(size_game, i)))		
		#print str(i) + ": " + str(percentage_nasheq(size_game, i))
	#print eq_list
	return eq_list


def print_all_percentages(k, eq_list):
	percentage_string = str(k) + " "
	for i,x in enumerate(eq_list):
		#print str(i) + ", " + str(x)
		percentage_string = percentage_string + str(x) + " "
	percentage_string = percentage_string + "\n"
	print percentage_string
	return percentage_string
	



if __name__ == '__main__':

	m = int(sys.argv[1])
	i=m
	#for i in range(2,m+1):
	eq_percentages = compute_all_percentages(i)
	eq_list = compute_all_percentages(i)
	percentage_string = print_all_percentages(i, eq_list)
		#eq_list = str(i) + " " + str(eq_percentages)
		#print "eq_list " + str(eq_list)
	filename = str(i) + "_rel.txt"
	with open(filename, "a") as out_file:
		out_file.write(percentage_string)




