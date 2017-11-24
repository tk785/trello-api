#!/bin/bash

if [ $# -ne 4 ]; then
  echo "$0 <key> <token>" 1>&2
  echo "ex. sh get-board-id.sh  api_key token ListID CardName" 1>&2
  exit 1
fi

echo "key:$1"
echo "token:$2"
echo "ListID:$3"
echo "CardName:$4"
curl -X post "https://trello.com/1/cards?key=$1&token=$2&idList=$3" --data-urlencode name=$4
