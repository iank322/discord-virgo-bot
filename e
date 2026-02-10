"""Simple 3x3 matrix multiplication example."""


def multiply_3x3(a, b):
    """Multiply two 3x3 matrices."""
    result = [[0, 0, 0] for _ in range(3)]
    for i in range(3):
        for j in range(3):
            result[i][j] = sum(a[i][k] * b[k][j] for k in range(3))
    return result


def main():
    matrix_a = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
    ]
    matrix_b = [
        [9, 8, 7],
        [6, 5, 4],
        [3, 2, 1],
    ]

    product = multiply_3x3(matrix_a, matrix_b)

    print("Matrix A:")
    for row in matrix_a:
        print(row)

    print("\nMatrix B:")
    for row in matrix_b:
        print(row)

    print("\nA x B:")
    for row in product:
        print(row)


if __name__ == "__main__":
    main()
