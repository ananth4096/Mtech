# -*- coding: utf-8 -*-
"""
Created on Sat Aug  5 18:21:53 2023

@author: sreek
"""

import random


def mul(mat1, mat2):
    if type(mat1[0]) != list:
        mat1 = [mat1]

    if type(mat2[0]) != list:
        res = []
        for i in mat2:
            res.append([i])
        mat2 = res

    r1 = len(mat1)
    c1 = len(mat1[0])
    c2 = len(mat2[0])

    res = []
    for i in range(0, r1, 1):
        temp = []
        for j in range(0, c2, 1):
            temp.append(0)
        res.append(temp)

    for row in range(0, r1, 1):
        for col in range(0, c2, 1):
            res[row][col] = 0
            for i in range(0, c1, 1):
                res[row][col] += mat1[row][i] * mat2[i][col]

    if len(res) == 1 and len(res[0]) == 1:
        return res[0][0]
    elif len(res[0]) == 1:
        # Return vector if dimensions are 1xn
        temp = []
        for i in res:
            temp.append(i[0])
        res = temp
        return temp

    return res


def transpose(mat):
    if type(mat[0]) != list:
        mat = [mat]

    res = []
    m = len(mat)
    n = len(mat[0])
    for i in range(0, n, 1):
        temp = []
        for j in range(0, m, 1):
            temp.append(mat[j][i])
        res.append(temp)
    return res


def svd(input_matrix):

    # A x A`
    input_squared = mul(input_matrix, transpose(input_matrix))
    iterations = 100

    # Number of eigenvectors and values to recover
    rows = len(input_squared)
    cols = len(input_squared[0])
    N = min(rows, cols)

    # Left eigenmatrix
    U = []
    for i in range(0, N, 1):
        temp = []
        for j in range(0, len(input_matrix[0]), 1):
            temp.append(0)
        U.append(temp)

    # Eigenvalues
    D = []
    for i in range(0, N, 1):
        D.append(0)

    for n in range(N):
        b = []
        for i in range(0, cols, 1):
            b.append(random.random())

        dominant_eigenvalue = None
        for k in range(0, iterations, 1):
            # Input matrix multiplied by b_k
            projection = mul(input_squared, b)

            # Norm of input matrix multiplied by b_k
            norm = mul(projection, projection)**0.5

            # Calculate b_{k+1}
            b_next = [d / norm for d in projection]

            # Calculate the Rayleight quotient
            dominant_eigenvalue = mul(b, projection) / mul(b, b)

            b = b_next

        D[n] = dominant_eigenvalue**0.5

        for i in range(len(b)):
            U[i][n] = b[i]

        # Remove current dimensions from the input before moving on the next singular value
        outer_product = [[0] * len(b) for j in range(len(b))]
        for i in range(len(b)):
            for j in range(len(b)):
                outer_product[i][j] = dominant_eigenvalue*b[i]*b[j]

        for i in range(len(input_squared)):
            for j in range(len(input_squared[0])):
                input_squared[i][j] -= outer_product[i][j]

    Dinv = []
    for i in range(0, N, 1):
        temp = []
        for j in range(0, N, 1):
            temp.append(0)
        Dinv.append(temp)
    for i in range(N):
        Dinv[i][i] = 1/D[i]

    V = mul(Dinv, mul(transpose(U), input_matrix))

    return U, V, D


def eig(input_matrix):
    iterations = 100

    # Number of eigenvectors
    N = len(input_matrix[0])

    # Left eigenmatrix
    U = []
    for i in range(0, N, 1):
        temp = []
        for j in range(0, len(input_matrix[0]), 1):
            temp.append(0)
        U.append(temp)

    # Eigenvalues
    D = []
    for i in range(0, N, 1):
        D.append(0)

    for n in range(N):
        # Randomly initialize search vector
        b = []
        for i in range(0, len(input_matrix[0]), 1):
            b.append(random.random())

        dominant_eigenvalue = None
        for k in range(0, iterations, 1):
            # Input matrix multiplied by b_k
            projection = mul(input_matrix, b)

            # Norm of input matrix multiplied by b_k
            norm = mul(projection, projection)**0.5

            # Calculate b_{k+1}
            b_next = [d / norm for d in projection]

            # Calculate the Rayleight quotient
            dominant_eigenvalue = mul(b, projection) / mul(b, b)

            b = b_next

        D[n] = dominant_eigenvalue

        for i in range(0, len(b), 1):
            U[i][n] = b[i]

        # Remove current dimensions from the input before moving on the next singular value
        outer_product = [[0] * len(b) for j in range(len(b))]
        for i in range(len(b)):
            for j in range(len(b)):
                outer_product[i][j] = dominant_eigenvalue*b[i]*b[j]

        for i in range(len(input_matrix)):
            for j in range(len(input_matrix[0])):
                input_matrix[i][j] -= outer_product[i][j]

    Dinv = []
    for i in range(0, N, 1):
        temp = []
        for j in range(0, N, 1):
            temp.append(0)
        Dinv.append(temp)
    for i in range(N):
        Dinv[i][i] = 1/D[i]

    return U, D


def matrix_input(n, m):
    res = []
    for i in range(0, n, 1):
        temp = []
        for j in range(0, m, 1):
            flag = False
            while flag == False:
                try:
                    val = float(
                        input(f"Enter the element in row {i}, column {j}: "))
                    flag = True
                except:
                    print("Please check what you have entered!")
            temp.append(val)
        res.append(temp)
    return res


def dim_input():
    row_flag = False
    col_flag = False
    while row_flag == False:
        try:
            rows = int(input(">> Enter the number of rows: "))
            if rows < 1:
                raise Exception
            row_flag = True
        except:
            print("Please check what you have entered!")
    while col_flag == False:
        try:
            cols = int(input(">> Enter the number of columns: "))
            if cols < 1:
                raise Exception
            col_flag = True
        except:
            print("Please check what you have entered!")
    return rows, cols


# SVD

rows, cols = dim_input()
input_mat = matrix_input(rows, cols)

U, V, D = svd(input_mat)
print("Left singular vectors")
print(U)
print("Right singular vectors")
print(V)
print("Singular values")
print(D)


print("*"*10)

# Eigen Decomposition

flag = True
while flag == True:
    rows, cols = dim_input()
    if rows != cols:
        print("Eigen decompostion can be found for square matrices. Check what you have entered!")
    else:
        flag = False
input_mat = matrix_input(rows, cols)
U, D = eig(input_mat)
print("Eigenvectors")
print(U)
print("Eigenvalues")
print(D)
