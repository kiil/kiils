---
title: Workflow for code på gastrofun
description: "Som det er sat op"
summary: "Som det er sat op"
date: 2020-02-27
type: single
# draft: true

show_reading_time: true

toc: true
# katex: true

genrer:
  - docs

skribenter:
  - lennart-kiil

keywords:
  - devops
  - workflow


emner:
  - devops

tools:
  - ssh
  - git

cases:
  - gastrofun

# thumbnail: ""
---


## Lokalt

Det første foregår lokalt på `gitlab/dev.gastrofun.dk`

`master branch` fra `gitlab/dev.gastrofun.dk` går til live site over gitlab.

`dev branch` fra `gitlab/dev.gastrofun.dk` går til dev site over gitlab.


### Til live

Hvis noget skal til live

```
git checkout master
```

vær sikker på at have den nyeste master fra origin:


```
git pull
```

Lav ændringer

check med

```
git status
```

Så

```
git add .
```

og


```
git commit -m "deskriptiv tekst her"
```
og

```
git push
```

### Til dev

Tilsvarende, men


```
git checkout dev
```


## På internet-serveren

```
ssh XXXXX@NN.NN.NN.NN -p NNN
```

Hvis det er dev så gå til dev folder, hvis det er live så gå til live folderen.

Sikre at vi er på den rigtige branch i forhold til miljø

```
git branch
```

hvis i orden

```
git pull
```

Bemærk at `git pull` i virkeligheden både henter (fetch) og merger filerne.

## Afsluttende bemærkning

Dette workflow er kun for kode-filer og omfatter ikke medie-filer, konfiguration eller databaser
