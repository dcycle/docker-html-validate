FROM python:alpine

RUN apk update && apk add --no-cache openjdk8
RUN pip install html5validator

WORKDIR /code

ENTRYPOINT [ "html5validator" ]
