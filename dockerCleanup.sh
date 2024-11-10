#!/bin/bash

# This script deletes the container and removes the image as well
# to free up your space.

docker container stop oracle-xe-db
docker container rm oracle-xe-db
docker image rm -f oracle-db-img