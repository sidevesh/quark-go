#!/bin/sh

sh setup_build_dir.sh
sh build_web_app.sh
go build -o build/app
