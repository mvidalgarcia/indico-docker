#!/bin/bash

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://test-mvg.web.cern.ch)

if [ $STATUS_CODE -eq 200 ]; then
    exit 0
else
    exit 1
fi
