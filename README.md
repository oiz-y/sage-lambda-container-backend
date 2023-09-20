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