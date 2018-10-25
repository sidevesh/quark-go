#!/bin/sh

if [ -d "build" ]; then
  rm -rf build/*
else
  mkdir build
fi
