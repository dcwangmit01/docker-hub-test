FROM alpine:3.8

RUN echo "hello world" > /asdf.txt

RUN echo "Install os apps" && \
    apk add --no-cache curl

RUN echo "Install bin apps" && \
    curl -sSLo jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && \
    chmod +x jq && mv jq /usr/local/bin/

RUN echo "hello world again" > /asdf2.txt

ENTRYPOINT ["/usr/bin/curl"]