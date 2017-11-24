#!/bin/bash

if [ $# -ne 4 ]; then
  echo "$0 <key> <token>" 1>&2
  echo "ex. sh get-board-id.sh  api_key token cardID checkListID" 1>&2
  exit 1
fi

echo "key:$1"
echo "token:$2"
echo "cardID:$3"
echo "checkListID:$4"
# curl -X post "https://trello.com/1/cards/$3/checklist/$4/checkitem?key=$1&token=$2"  --data-urlencode name=$5

filename=./checklist-item.txt
cat ${filename} | while read line
do
  curl -X post "https://trello.com/1/cards/$3/checklist/$4/checkitem?key=$1&token=$2"  --data-urlencode name=${line}
done