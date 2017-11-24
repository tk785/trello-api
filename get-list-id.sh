#!/bin/bash

if [ $# -ne 3 ]; then
  echo "$0 <key> <token>" 1>&2
  echo "ex. sh get-board-id.sh  api_key token BoardID" 1>&2
  exit 1
fi

echo "key:$1"
echo "token:$2"
echo "BoardID:$3"
curl "https://trello.com/1/boards/$3/lists?key=$1&token=$2"