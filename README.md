[![CircleCI](https://circleci.com/gh/dcycle/docker-html-validate.svg?style=svg)](https://circleci.com/gh/dcycle/docker-html-validate)

Validates or formats HTML using [Tidy](https://www.html-tidy.org).

For example, to validate:

    docker run --rm dcycle/html-validate:1 --help
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 \
      ./examples/valid/valid.html
    find examples/valid -name "*.html" | xargs \
      docker run --rm -v "$(pwd)":/code dcycle/html-validate:1
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 \
      ./examples/invalid/valid.html

For example, to format all HTML files in a directory:

    find . -name "*.html" -print0 | xargs -0 docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 -i -m

For example, to format a single HTML file:

    docker run --rm -v "$(pwd)":/code dcycle/html-validate:1 -i -m index.html

Resources
-----

 * [This image on Docker.io](https://hub.docker.com/r/dcycle/html-validate/)
 * [Stack Overflow: Use HTML Tidy to just indent HTML code?](https://stackoverflow.com/questions/7151180)
