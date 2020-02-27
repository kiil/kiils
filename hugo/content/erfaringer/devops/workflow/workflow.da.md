---
title: "Workflowet"
description: "Der er meget jeg kan gøre bedre - også selvomfacebook har gjort det sværere"
summary: "Der er meget jeg kan gøre bedre - også selvomfacebook har gjort det sværere"
# date: 2020-01-05
draft: true
thumbnail: "erfaringer/some/facebook/skidt-trend-facebook-page-followers.png"
show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

genrer:
  - polemik

keywords:
  - facebook
  - some
  - fald


emner:
  - facebook
  - some




---

## Først helt lokalt

### Installer drupal med composer.

```
composer create-project drupal/recommended-project folder-navn

```
Det giver
```
folder-navn/
    composer.json
    composer.lock
    vendor/
    web/
```

Lav følgende `folder-navn/.gitignore`

```
web/core

vendor

web/sites

web/.htaccess
```

Ved at udelade core slipper man også for fristelsen til at hacke core.

Hent diverse moduler og temaer med `composer require` fra `folder-navn`

Husk

```
composer require drush/drush
```


### Git versionskontrol

Nu `git init` fra `folder-navn`



`git status`

```
.editorconfig
.gitattributes
.gitignore
composer.json
composer.lock
web/
```
bemærk at vendor ikke er der.

`git add .`

`git status`

```
new file:   .editorconfig
new file:   .gitattributes
new file:   .gitignore
new file:   composer.json
new file:   composer.lock
new file:   web/.csslintrc
new file:   web/.eslintignore
new file:   web/.eslintrc.json
new file:   web/.ht.router.php
new file:   web/INSTALL.txt
new file:   web/README.txt
new file:   web/autoload.php
new file:   web/example.gitignore
new file:   web/index.php
new file:   web/modules/README.txt
new file:   web/profiles/README.txt
new file:   web/robots.txt
new file:   web/themes/README.txt
new file:   web/update.php
new file:   web/web.config
```
læg mærke til at web/.htaccess  web/core og web/sites  ikke er der.

`git commit -m "initial commit"`

## gitlab private repo


## På selve internet-serveren

 bruges kun commposer install (ikke composer update, composer require eller andre tunge kommanddoer)
