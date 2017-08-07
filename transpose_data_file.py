#!/usr/bin/env python2

'''
script that takes an input file with two rows of data and equal amount of values in each row
and prints the transpose, i.e. a row for each value with the two entries of each of the previous rows.
'''

import sys

rows = []
if __name__ == '__main__':
    filename = sys.argv[1]
    with open(filename) as input_file:
        for line in input_file:
            line = line.strip()
            if line:
                values = list(map(float, line.split()))
                rows.append(values[1:])

    m = len(rows[0])
    sum1 = 0.0
    sum2 = 0.0
    for i in xrange(m):
        sum1 += rows[0][i]
        sum2 += rows[1][i]
        print("%d %f %f" % ((i+1), sum1, sum2))
