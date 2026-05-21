#!/usr/bin/env bash
set -e

s() { echo "$1" | tr 'b-za-aB-ZA-A' 'a-zA-Z'; }

FILE=$(s "ljuufo")
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ ! -f "$SCRIPT_DIR/$FILE" ]; then
    echo "$(s "Fssps") $FILE $(s "opu gpvoe")"
    exit 1
fi

read -s -p "$(s "Foufs qbttqisbtf: ")" PASS
echo

eval "$(s 'pqfottm fod -bft-256-dcd -e -tbmu -qcleg2 -jo "$TDSJQU_EJS/$GJMF" -qbtt qbtt:"$QBTT" | ubs ya -D "$TDSJQU_EJS"')"

if [ $? -eq 0 ]; then
    echo "$(s "Voajqqfe tvddfttgvmmz.")"
else
    echo "$(s "Xspoh qbttqisbtf ps dpssvqufe gjmf.")"
    exit 1
fi
