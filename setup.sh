#!/usr/bin/env bash

python3 -m venv --system-site-packages camenv

source ./camenv/bin/activate
pip3 install -r requirements.txt
