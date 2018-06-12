#!/bin/sh

IMAGE_NAME=$1
shift

if [ "${IMAGE_NAME}" = "" ]; then
  exit 1
fi

docker run --rm -it \
  -v $(pwd)/application:/usr/local/src/application \
  -w /usr/local/src/application \
  ${IMAGE_NAME} "$@" \
