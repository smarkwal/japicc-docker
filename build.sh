#!/bin/bash

docker build --no-cache --tag smarkwal/japicc:2.4 .
docker tag smarkwal/japicc:2.4 smarkwal/japicc:latest
