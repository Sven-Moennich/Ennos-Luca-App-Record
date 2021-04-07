#!/bin/bash

SCANNER_ID=54daa036-f41f-40ba-9878-2074950991a0

curl https://app.luca-app.de/api/v3/scanners/${SCANNER_ID}/traces/count/current
echo ""