---
title: "HTML med toc fra markdown via pandoc"
description: "Plus en bonus"
summary: "Plus en bonus"
date: 2020-09-02
# draft: true

show_reading_time: true

# toc: true
# katex: true

genrer:
  - lifehacks

skribenter:
  - lennart-kiil

keywords:
  - html
  - markdown
  - txt
  - struktur
  - pandoc

emner:
  - tips
  - tricks
  - struktur
  - sortering

tools:
  - pandoc


# thumbnail: ""
---



I terminalen i samme folder som filen ligger:

```
pandoc -s --toc filename.md
```

Og kopier så alt mellem body-tags.


Bonus: Pandoc gør ikke æ, ø og å grimme i interne links :)
