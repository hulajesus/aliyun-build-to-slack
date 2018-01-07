FROM almir/webhook
RUN apk update && apk upgrade && apk add --no-cache bash curl ca-certificates
COPY aliyun-build.json /etc/webhook/hooks.json
RUN mkdir -p /app
ADD ./send-to-slack.sh /app
RUN chmod +x /app/send-to-slack.sh
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json"]