
FROM quay.io/giantswarm/golang:1.19.1-alpine3.16
RUN apk add --no-cache git
WORKDIR /go/src/github.com/ghgsnaidu/go-db-demo
COPY . .
RUN go mod tidy
WORKDIR /go/src/github.com/ghgsnaidu/go-db-demo/cmd/main
RUN go build   -o app
EXPOSE 3000
CMD ["./app"]