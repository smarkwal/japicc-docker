#!/bin/bash

docker run --rm -v "$(pwd):/japicc" smarkwal/japicc:2.4 "$@"
