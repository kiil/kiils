#!/bin/bash

rm -r docs

cd hugo

HUGO_ENV=production hugo --ignoreCache

mv public ../docs

cd ..

git add .

echo skriv git besked

read besked

git commit --message="$besked"

git push
