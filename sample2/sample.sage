def get_polynomial_degree(polynomial):
    R.<x> = PolynomialRing(QQ)
    f = R(polynomial)
    return int(f.degree())


if __name__ == '__main__':
    polynomial = 'x^2 - 1'
    degree = get_polynomial_degree(polynomial)
    print(f'The degree of {polynomial} is {degree}.')
