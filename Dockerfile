FROM alpine:3

RUN apk update \
    && apk add git openssh-client

RUN mkdir -p /home/gituser

WORKDIR /home/gituser

RUN git --version

ENTRYPOINT ["/bin/sh", "-c", "git"]

CMD ["--help"]