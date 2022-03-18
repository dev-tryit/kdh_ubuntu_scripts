#!/bin/bash

docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage $1
