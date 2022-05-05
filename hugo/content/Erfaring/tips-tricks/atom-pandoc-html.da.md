---
title: Fra markdown til html i atom med enhanced preview
description: "Sorter sektioner i markdown"
summary: "Sorter sektioner i markdown"
date: 2019-07-27
draft: true

show_reading_time: true

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

Gem som fragment i samme folder.

Og opdater automatisk på save.

```
---
output:
  custom_document:
    path: fragment.html
export_on_save:
  pandoc: true
---


Tekst **her**

```
