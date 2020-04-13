FROM balenalib/raspberry-pi-alpine-golang

RUN go get github.com/gin-gonic/gin && \
  go get github.com/jackc/pgx

RUN mkdir ${GOPATH}/public

# Getting a simple example
COPY main.go ${GOPATH}/public/

EXPOSE 8080

CMD go run ${GOPATH}/public/main.go

