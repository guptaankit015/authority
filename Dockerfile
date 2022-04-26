FROM golang:1.18-alpine

WORKDIR /app

RUN apk add git
RUN apk add --update nodejs npm
RUN npm install -g nodemon

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

RUN go build -o authority .

EXPOSE 8000

ENTRYPOINT [ "./authority" ]