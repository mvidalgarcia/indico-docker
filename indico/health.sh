#!/bin/bash

STATUS_CODE=$(./opt/indico/.venv/bin/uwsgi_curl -s 127.0.0.1:59999)
if [ $STATUS_CODE -eq 200 ]; then
    exit 0
else
    exit 1
fi
