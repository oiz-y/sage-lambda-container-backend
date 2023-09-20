# SageMath Docker 入門

本リポジトリは SageMath Docker コンテナを動かすための入門テキストです。

# sample1

- ビルド～コンテナ起動

```
docker build -t sample1 .
docker run sample1
```

- コンテナ実行結果

```
[ec2-user@ip-172-31-34-73 sage-lambda-container-backend]$ docker run sample1
  ***   Warning: not enough memory, new PARI stack 536870912
hello, from sample.sage
```

# sample2

- ビルド～コンテナ起動

```
docker build -t sample2 .
docker run sample2
```

- コンテナ実行結果

```
[ec2-user@ip-172-31-34-73 sage-lambda-container-backend]$ docker run sample2
  ***   Warning: not enough memory, new PARI stack 536870912
The degree of x^2 - 1 is 2.
```

# sample3

- ビルド～コンテナ起動

```
docker build -t sample3 .
docker run sample3
```

- コンテナ実行結果

```
[ec2-user@ip-172-31-34-73 sage-lambda-container-backend]$ docker run sample3
  ***   Warning: not enough memory, new PARI stack 536870912
The degree of x^2 - 1 is 2.
[{'conjugacy_rate': '{"1,1": "0.50000000000000000000", "2": "0.50000000000000000000"}', 'degree': Decimal('2'), 'group_name': 'S2'}]
```
