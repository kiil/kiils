#!/bin/bash

rm -r docs

cd hugo

HUGO_ENV=production hugo

mv public ../docs

cd ..

git add .

git commit -m "deployed by script"

git push
