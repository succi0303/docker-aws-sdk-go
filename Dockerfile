FROM golang:latest

LABEL maintainer="succi0303@gmail.com"

RUN apt-get update -y && \
    apt-get install -y \
    zip \
    python3-dev \
    python3-pip

RUN go get github.com/aws/aws-sdk-go-v2/aws && \
    go get github.com/aws/aws-sdk-go-v2/aws/external && \
    go get github.com/aws/aws-sdk-go-v2/service/dynamodb && \
    go get github.com/aws/aws-sdk-go-v2/service/dynamodb/dynamodbattribute && \
    go get github.com/aws/aws-lambda-go/lambda && \
    go get github.com/aws/aws-lambda-go/events

RUN pip3 install --upgrade awscli

WORKDIR /root/go/src

ENTRYPOINT ["bash"]
