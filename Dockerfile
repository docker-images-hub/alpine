FROM alpine:latest

RUN apk update && apk upgrade && apk add --no-cache ca-certificates && update-ca-certificates 2>/dev/null || true
RUN apk add tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
