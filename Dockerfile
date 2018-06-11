FROM mhart/alpine-node:latest

RUN apk add --no-cache git make musl-dev go protobuf openssh

# Configure Go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

# install golang protoc plugin
RUN go get -u github.com/gogo/protobuf/protoc-gen-gofast

