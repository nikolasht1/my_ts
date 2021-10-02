FROM alpine:latest

RUN apk update && apk add --no-cache g++

COPY main.cpp settings.conf /tmp/

WORKDIR /tmp/

RUN g++ -o Test main.cpp

CMD ["./Test"]