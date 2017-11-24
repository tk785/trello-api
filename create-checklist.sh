#!/bin/bash

if [ $# -ne 3 ]; then
  echo "$0 <key> <token>" 1>&2
  echo "ex. sh get-board-id.sh  api_key token cardID" 1>&2
  exit 1
fi

echo "key:$1"
echo "token:$2"
echo "cardID:$3"
curl -X post "https://trello.com/1/cards/$3/checklists?key=$1&token=$2"