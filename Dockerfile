FROM ubuntu

RUN apt-get update && \
  apt-get --no-install-recommends -y install tidy && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /code

ENTRYPOINT [ "tidy" ]
