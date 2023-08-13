#!/usr/bin/env bash

# build a docker the docker image

if [ -f "/usr/bin/docker" ]; then
    echo -e "\033[32m[+] Docker installed.\033[0m"
    echo -e "\033[32m[*] Building Image.....\033[0m"
    docker build -t simple-rest-api:latest .
else
    echo -e "\033[31m[!] Docker not installed! \033[0m"
    exit 2
fi
