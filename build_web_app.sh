#!/bin/sh

cd web
npm install
npm run build
cd ..
mkdir build/bundle
cp -r web/build/* build/bundle
