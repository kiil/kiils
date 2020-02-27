---
title: Workflow for gastrofun
description: "Som det er sat op"
summary: "Som det er sat op"
date: 2020-02-27
# draft: true

# show_reading_time: true

# toc: true
# katex: true



skribenter:
  - lennart-kiil

keywords:
  - html
  - markdown
  - txt
  - struktur

emner:
  - tips
  - tricks
  - struktur


tools:
  - perl
  - terminal
  - atom


# thumbnail: ""
---



det hele foregår lokalt på gitlab/dev.gastrofun.dk

master branch fra gitlab/dev.gastrofun.dk går til live site over gitlab

dev branch fra gitlab/dev.gastrofun.dk går til dev site over gitlab

ssh XXXXXXX@94.23.148.5 -p NNN


Hvis noget skal til live

git checkout master

vær sikker på at have den nyeste master fra origin:

git pull

lav ændringer

check med git status

git add .

git commit -m "upddate ads text and upload verification file"

git push

### På internet-serveren

ssh XXXXX@NN.NN.NN.NN -p NNN

Hvis det  er dev så gå til dev folder, hvis det er live så gå til live folderen

sikre at vi er på den rigtige branch i forhold til miljø

git branch

hvis i orden

git pull
