#!/bin/bash
BRANCH_NAME=$(git symbolic-ref --short -q HEAD)
BRANCH_NUMBER=$(echo $BRANCH_NAME | sed -e 's/branch//g')
let "BRANCH_NUMBER++"
echo $BRANCH_NUMBER

git checkout -b branch$BRANCH_NUMBER
git push --set-upstream origin branch$BRANCH_NUMBER

echo "x" >> README.md
git add README.md
git commit -m "c-c-c-hanges"
git push
