#!/bin/bash

username=$1
data=$(curl -s https://api.github.com/users/$username);

echo "$data" | awk -F '"' '/"name":/ {print $4}'
echo "$data" | awk -F '"' '/"bio"/ {print $4}'
echo "$data" | awk -F '"' '/"location"/ {print $4}'
echo "$data" | awk -F '"' '/"blog"/ {print $4}'
