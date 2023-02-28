FROM alpine:3

RUN apk update \
    && apk add git openssh-client

RUN mkdir -p /home/gituser

WORKDIR /home/gituser

RUN git --version

# ENTRYPOINT ["/bin/sh", "-c"]
# CMD ["git", "--version"]

CMD ["echo", "USAGE: pass a command to run"]