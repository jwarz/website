#!/usr/bin/env bash
set -e

source ./config/_default/credentials

npm install -g https://github.com/jwarz/staticrypt

find ./public/post/getting-started -maxdepth 1 -type f -name "index.html" -exec staticrypt {} $(echo "$password_encoded_2_1" | openssl enc -d -base64) -o {} -t "Access to Course Materials" -i "Enter the Course Password" \;