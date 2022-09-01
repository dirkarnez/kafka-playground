FROM golang:alpine

COPY . /go/src/github.com/dirkarnez/kafka-playground
WORKDIR /go/src/github.com/dirkarnez/kafka-playground

RUN go build
EXPOSE 8080

ENTRYPOINT ["./kafka-playground"]