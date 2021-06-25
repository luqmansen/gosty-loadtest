#!/usr/bin/env sh

startdate=$(date)
sudo docker run --rm -v `pwd`/script:/scripts -v `pwd`/data:/data czerasz/wrk-json wrk -c$1 -t4 -d300s -s /scripts/script.lua $2
enddate=$(date)
echo $startdate
echo $enddate