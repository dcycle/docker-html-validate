[![CircleCI](https://circleci.com/gh/dcycle/docker-html-validate.svg?style=svg)](https://circleci.com/gh/dcycle/docker-html-validate)

Validates HTML using [Tidy](https://www.html-tidy.org).

For example:

    docker run --rm dcycle/html-validate:1 --help
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 \
      ./examples/valid/valid.html
    find examples/valid -name "*.html" | xargs \
      docker run --rm -v "$(pwd)":/code dcycle/html-validate:1
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 \
      ./examples/invalid/valid.html

Resources
-----

 * [This image on Docker.io](https://hub.docker.com/r/dcycle/html-validate/)
