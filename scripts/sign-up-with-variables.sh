#!/bin/bash

#curl "http://localhost:3000/sign-up"
#EMAIL=ant@gmail.com PASSWORD=test sh scripts/sign-up-with-variables.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
