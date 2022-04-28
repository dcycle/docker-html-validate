FROM alpine

RUN apk add --no-cache tidyhtml

WORKDIR /code

ENTRYPOINT [ "tidy" ]
