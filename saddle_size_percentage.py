''' 
small script that computes the probabilities of a game of size m having a strict saddle of a certain size
does so by analyzing the results of SaddlePy
'''
import sys
import math
import numpy as np


def	convert_rel_saddlesizes(saddle_list, size):
	saddle_string = str(size) + " "
	for i,x in enumerate(saddle_list):
		saddle_string = saddle_string + " " + str(x) + " "
	saddle_string = saddle_string + "\n \n"
	print saddle_string
	return saddle_string

def write_relative_to_file(saddle_list, size):

	saddle_string = convert_rel_saddlesizes(saddle_list, size)



if __name__ == '__main__':

	filename = sys.argv[1]

	with open(filename, 'r') as in_file:
		counter = 0
		file_content = in_file.read()
		file_list = file_content.split()
		size = int(max(file_list))
		print size
		counter_list = [0]*(size)
		for i in file_list:
			counter_list[int(i)-1] = counter_list[int(i)-1]+1
			counter=counter+1
			

		counter_list_relative = [0]*(size)
		for i,x in enumerate(counter_list): 
			counter_list_relative[i] = float(x) / float(counter)

	print counter_list
	print counter
	print counter_list_relative

	write_relative_to_file(counter_list_relative, size)



