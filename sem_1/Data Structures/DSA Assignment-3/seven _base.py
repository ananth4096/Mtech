# -*- coding: utf-8 -*-
"""
Created on Fri Aug 18 15:01:06 2023

@author: Ananth Patnaik
"""
"""
Question 2:
    Convert a positive base 10 integer into a positive base 7 integer
"""
n = int(input('Input: '))
def base_seven(n):
     if n == 0:
        return 0
     else:
        return (n % 7 + 10 * base_seven(int(n // 7)))
print(base_seven(n))