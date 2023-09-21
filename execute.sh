#!/bin/bash

response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8081)
echo response is: $response

if [ ${response} -eq 200 ]
    then
        echo echo success!
    else 
        exit 1
        echo failure!
fi