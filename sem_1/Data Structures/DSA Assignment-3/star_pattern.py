# -*- coding: utf-8 -*-
"""
Created on Fri Aug 18 12:48:02 2023

@author: Ananth Patnaik
"""
"""Question 1:
    Write a program to print star pattern using recursion"""
n=int(input('Input: '))
def star_pattern(a, i=1):
    if i<=n:
        print("*"*i)
        star_pattern(a, i+1)
star_pattern(n)