import boto3
from boto3.dynamodb.conditions import Key


dynamodb = boto3.resource('dynamodb', region_name='ap-northeast-1')
conjugacy_rate_table = dynamodb.Table('sage-conjugacy-rate')


def get_group_data(degree):
    response = conjugacy_rate_table.query(
        KeyConditionExpression=Key('degree').eq(degree)
    )
    return response['Items']


def get_polynomial_degree(polynomial):
    R.<x> = PolynomialRing(QQ)
    f = R(polynomial)
    return int(f.degree())


if __name__ == '__main__':
    polynomial = 'x^2 - 1'
    degree = get_polynomial_degree(polynomial)
    print(f'The degree of {polynomial} is {degree}.')

    response = get_group_data(degree)
    print(response)
