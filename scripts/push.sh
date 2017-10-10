#!/bin/sh
# Just a test, need to do it "the Node way".

echo "push script start."
echo "user.name = $CIRCLE_PROJECT_USERNAME"
echo "Build num $CIRCLE_BUILD_NUM"

git --version

echo "Config"
if git config --local user.email >/dev/null 2>&1
then
    git config --global user.email "shalev.oren@gmail.com"
fi
if git config --local user.name >/dev/null 2>&1
then
    git config --global user.name $CIRCLE_PROJECT_USERNAME
fi

echo "Add"
git add .

echo "Commit"
git commit -m "circle build $CIRCLE_BUILD_NUM"
git push