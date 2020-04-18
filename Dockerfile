FROM balenalib/raspberry-pi-alpine-golang

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

RUN go get -v -d github.com/gin-gonic/gin
RUN go install -v github.com/gin-gonic/gin

RUN mkdir ${GOPATH}/public

COPY main.go ${GOPATH}/public/

EXPOSE 8080

CMD go run ${GOPATH}/public/main.go

