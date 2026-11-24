#!/usr/bin/env bash
set -e
TAG="calm-delta-frosty-canyon"
LIB="gem-drawbridge.a"
URL="https://github.com/reesethia/libblankdaemon/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
