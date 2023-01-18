#!/bin/bash

amountOfDockerContainers=$(docker ps | wc -l)

# First line is header line, so omit this
((amountOfDockerContainers=amountOfDockerContainers-1))
printf "$amountOfDockerContainers"
