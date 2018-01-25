#!/bin/bash

STATUS_LINE=$(./opt/indico/.venv/bin/uwsgi_curl 127.0.0.1:59999 | grep HTTP/1.1)
STATUS_LINE_ARRAY=($STATUS_LINE)
STATUS_CODE=${STATUS_LINE_ARRAY[1]}

if [ $STATUS_CODE -eq 200 ]; then
    exit 0
else
    exit 1
fi
