[![CircleCI](https://circleci.com/gh/dcycle/docker-html-validate.svg?style=svg)](https://circleci.com/gh/dcycle/docker-html-validate)

Validates HTML using [Nu Html Checker](https://github.com/validator/validator) (tag 3); Formats HTML using [Tidy](https://www.html-tidy.org) (tag 2, no longer updated weekly as of September 2023, but still useful for formatting).

For example, to validate, we recommend using tag 3 which uses Nu Html Checker, which is more up-to-date than Tidy:

    docker run --rm dcycle/html-validate:3 --help
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:3 \
      ./examples/valid/valid.html
    find examples/valid -name "*.html" | xargs \
      docker run --rm -v "$(pwd)":/code dcycle/html-validate:3
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:3 \
      ./examples/invalid/valid.html

For example, to format all HTML files in a directory, you should use tag 2 which uses Tidy:

    find . -name "*.html" -print0 | xargs -0 docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 -i -m

For example, to format a single HTML file:

    docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 -i -m index.html

Resources
-----

 * [This image on Docker.io](https://hub.docker.com/r/dcycle/html-validate/)
 * [Stack Overflow: Use HTML Tidy to just indent HTML code?](https://stackoverflow.com/questions/7151180)
