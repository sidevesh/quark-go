#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "Need exactly 2 arguments, url and name"
  exit 1
fi
sh setup_build_dir.sh
go build -o "build/$2" -ldflags "-X main.WEB_APP_ADDRESS=$1"

