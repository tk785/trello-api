#!/bin/bash

if [ $# -ne 2 ]; then
  echo "$0 <key> <token>" 1>&2
  echo "ex. sh get-board-id.sh  api_key token" 1>&2
  exit 1
fi

echo "key:$1"
echo "token:$2"
curl "https://trello.com/1/members/takayuki555/boards?key=$1&token=$2&fields=name"