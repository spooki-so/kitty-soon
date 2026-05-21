#!/usr/bin/env bash
set -e

FILE=$(echo "ljuufo" | tr 'b-za-aB-ZA-A' 'a-zA-Z')
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ ! -f "$SCRIPT_DIR/$FILE" ]; then
    echo "Error: $FILE not found"
    exit 1
fi

read -s -p "Enter passphrase: " PASS
echo

openssl enc -aes-256-cbc -d -salt -pbkdf2 -in "$SCRIPT_DIR/$FILE" -pass pass:"$PASS" | tar xz -C "$SCRIPT_DIR"

if [ $? -eq 0 ]; then
    echo "Unzipped successfully."
else
    echo "Wrong passphrase or corrupted file."
    exit 1
fi
