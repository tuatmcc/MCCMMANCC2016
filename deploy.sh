#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'expected one argument.'
    exit 0
fi

git checkout gh-pages
git merge $1
git push origin gh-pages
git checkout $1
