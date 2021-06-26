#!/usr/bin/env sh

URL=$2
CONN=$1
echo using $CONN connection to $URL

startdate=$(date)
sudo docker run --rm -v `pwd`/script:/scripts -v `pwd`/data:/data czerasz/wrk-json wrk -c$CONN -t4 -d300s -s /scripts/req.lua $URL
enddate=$(date)
echo $startdate
echo $enddate
