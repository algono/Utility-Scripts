#!/bin/sh

if [ "$#" != 2 ]
then
    echo "Usage: crear-rama-ut <numero-sprint> <numero-ut>"
    exit 1
fi

read -d '' setVariables << EOF
$NEW_BRANCH="sprint$1/$2"
$SPRINT_MASTER_BRANCH="sprint$1/master"
EOF

git branch "$NEW_BRANCH" "$SPRINT_MASTER_BRANCH" 
git checkout "$NEW_BRANCH"