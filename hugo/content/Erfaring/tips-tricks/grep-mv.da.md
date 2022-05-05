---
title: "mv og grep"
description: "Plus en bonus"
summary: "Plus en bonus"
date: 2020-09-13
draft: true

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
  - automatisering


tools:
  - zsh
  - terminal


# thumbnail: ""
---

Command substitution i terminalen i samme folder som filen ligger med zsh:

```
mv $(grep -il "tekst" *.md) ../ARKIV
```

I mit tilfæde

```
mv $(grep -il "#s0" *.md) ../ARKIV
```


Hvor `#s0`er navnet på det tag som jeg giver udgivet materiale.

Bemærk: virker muligvis ikke hvis filnavane indeholder mellmrum eller ikke-standard karakterer. Se evt: http://www.jpeek.com/articles/linuxmag/2005-05/
