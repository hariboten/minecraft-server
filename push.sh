#!/bin/bash

# if argument is provided, use it as version, or use "latest"
if [ -z "$1" ]; then
	version="latest"
else
	version=$1
fi

docker login hariboten.sakuracr.jp

docker tag minecraft:$version hariboten.sakuracr.jp/minecraft:$version

docker push hariboten.sakuracr.jp/minecraft:$version
