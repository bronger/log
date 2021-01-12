#!/bin/sh
set -e

script=$(readlink -f "$0")
script_path=$(dirname "$script")

docker build -t bronger/log "$script_path"
docker push bronger/log
