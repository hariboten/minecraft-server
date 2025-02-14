#!/bin/bash

if [ -z "$1" ]; then
	version="latest"
else
	version=$1
fi

docker run --rm --name minecraft -p 25565:25565 minecraft:$version
