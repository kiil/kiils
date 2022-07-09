#!/bin/bash

rm -r docs

cd hugo

HUGO_ENV=production hugo

mv public ../docs

cd ..

git add .

read besked

git commit -m "$besked"

git push
