#!/bin/bash

curl https://api.github.com/users/$1 | grep name | awk -F ':' '{print $2}' | cut -d ',' -f 1
curl https://api.github.com/users/$1 | grep bio | awk -F ':' '{print $2}'
curl https://api.github.com/users/$1 | grep location | awk -F ':' '{print $2}'
curl https://api.github.com/users/$1 | grep blog | awk -F ' ' '{print $2}'
