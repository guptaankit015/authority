FROM golang:1.18.1-alpine3.15
ARG Version=dev
ENV GO111MODULE=on
RUN apk add --update nodejs npm
RUN npm install -g nodemon
# RUN apk add --no-cache libc6-compat
ENV CGO_ENABLED=0
WORKDIR /authority
COPY . .
RUN echo $GOPATH
RUN echo $GOROOT
RUN echo $PATH
EXPOSE 8000
ENTRYPOINT ["nodemon --watch '*' --ignore './pkg/**/*.go' --ext go --signal SIGTERM --exec 'go' run ./cmd/main.go"]