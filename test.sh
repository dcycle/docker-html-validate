#!/bin/bash
set -e
docker pull python:alpine

docker build -t local-dcycle-html-validate-image .

docker run --rm local-dcycle-html-validate-image --help
docker run --rm -v "$(pwd)":/code local-dcycle-html-validate-image \
  ./examples/valid/valid.html
find examples/valid -name "*.html" | xargs \
  docker run --rm -v "$(pwd)":/code local-dcycle-html-validate-image

! docker run --rm -v "$(pwd)":/code local-dcycle-html-validate-image \
  ./examples/invalid/invalid.html

echo ""
echo "All done testing!"
echo ""
