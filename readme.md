# Gosty Load-test
For performing benchmark & loadtest to [gosty](https://github.com/lqmansen/gosty)

###1. Using WRK
Using wrk to perform benchmarking, use ``start.sh`` script to init the test with first arg
is number of connection to run, and second arg is target url

###2. Using Locust
Using locust to perform distributed load testing, k8s manifest provided on `/locust/k8s`. Make sure to 
monitor the locust worker cpu usage because if the cpu is throttled, the number
of request won't go up