FROM alpine:latest

RUN apk update && \
    apk add --no-cache --update python3 python3-dev py3-pip build-base

WORKDIR /home

RUN pip3 install --upgrade pip && \
    pip3 install mkdocs

EXPOSE 8000

CMD ["sh"]