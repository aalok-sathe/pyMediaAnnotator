#!/bin/bash

all: build

build:
		python3 setup.py sdist bdist_wheel

clean:
		rm -rf build *.egg-info dist
