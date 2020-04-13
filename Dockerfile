FROM golang:latest

RUN go get github.com/gin-gonic/gin && \
go get github.com/jackc/pgx && \
go get github.com/nkuik/automation-api

RUN mkdir /go/public

# Getting a simple example
RUN mv /go/src/github.com/nkuik/automation-api/main.go /go/public/

CMD go run /go/public/main.go

EXPOSE 8080
