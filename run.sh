#!/bin/sh

sh setup_build_dir.sh
sh build_web_app.sh
go build -o build/app -ldflags "-X main.DEBUG_PORT=3010"
cd web
# Uncomment below command and comment out next line,
# to automatically start the app on run, otherwise manually execute the app noce compiled
#./app & PORT=3010 npm start
PORT=3010 npm start

