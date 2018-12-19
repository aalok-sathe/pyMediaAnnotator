#!/bin/bash

all: build

build: setup.py insertversion.py
		python3 setup.py sdist bdist_wheel
		python3 insertversion.py

clean:
		rm -rf build *.egg-info dist
