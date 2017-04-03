#!/bin/bash
#EMAIL=myemail@email.com PASSWORD=123456 sh scripts/sign-in-json.sh
#curl "http://localhost:3000/sign-in" \
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
# data output from curl doesn't have a trailing newline
echo
