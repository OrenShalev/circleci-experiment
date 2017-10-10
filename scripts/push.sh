#!/bin/sh
# Just a test, need to do it "the Node way".

echo "push script start."
echo "user.name = $CIRCLE_PROJECT_USERNAME"
echo "Build num $CIRCLE_BUILD_NUM"

git --version

echo "Config"
git config user.email "shalev.oren@gmail.com"
git config user.name $CIRCLE_PROJECT_USERNAME

echo "Add"
git add .

echo "Commit"
git commit -m "circle build $CIRCLE_BUILD_NUM"

echo "Push"
git push origin `git rev-parse --abbrev-ref HEAD`

