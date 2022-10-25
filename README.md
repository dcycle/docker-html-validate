[![CircleCI](https://circleci.com/gh/dcycle/docker-html-validate.svg?style=svg)](https://circleci.com/gh/dcycle/docker-html-validate)

Validates or formats HTML using [Tidy](https://www.html-tidy.org).

For example, to validate:

    docker run --rm dcycle/html-validate:2 --help
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 \
      ./examples/valid/valid.html
    find examples/valid -name "*.html" | xargs \
      docker run --rm -v "$(pwd)":/code dcycle/html-validate:2
    docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 \
      ./examples/invalid/valid.html

For example, to format all HTML files in a directory:

    find . -name "*.html" -print0 | xargs -0 docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 -i -m

In some cases the above will refuse to make changes, telling you that "This document has errors that must be fixed before using HTML Tidy to generate a tidied up version." I cannot figure out why this works in some cases and not others, but the following is an alternative way to format all HTML files in a directory:

    for f in docs/*.html docs/*/*.html docs/*/*/*.html docs/*/*/*/*.html docs/*/*/*/*/*.html; do
      echo "Formatting file $f";
      docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 -i -m "$f"
    done

For example, to format a single HTML file:

    docker run --rm -v "$(pwd)":/code dcycle/html-validate:2 -i -m index.html

Resources
-----

 * [This image on Docker.io](https://hub.docker.com/r/dcycle/html-validate/)
 * [Stack Overflow: Use HTML Tidy to just indent HTML code?](https://stackoverflow.com/questions/7151180)
