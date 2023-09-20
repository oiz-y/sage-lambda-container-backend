import datetime
import boto3
from boto3.dynamodb.conditions import Key


dynamodb = boto3.resource('dynamodb', region_name='ap-northeast-1')
conjugacy_rate_table = dynamodb.Table('sage-conjugacy-rate')
result_table = dynamodb.Table('sage-result')


def get_jst_date():
    tz_jst = datetime.timezone(datetime.timedelta(hours=9))
    return datetime.datetime.now(tz_jst).strftime('%Y/%m/%d %H:%M:%S')


def get_group_data(degree):
    response = conjugacy_rate_table.query(
        KeyConditionExpression=Key('degree').eq(degree)
    )
    return response['Items']


def put_group_data(_id, group, polynomial):
    with result_table.batch_writer() as batch:
        batch.put_item(
            Item={
                'group': group,
                'id': _id,
                'polynomial': polynomial,
                'date': get_jst_date(),
            }
        )
