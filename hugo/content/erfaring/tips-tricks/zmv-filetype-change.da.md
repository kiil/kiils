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

Jeg har et arkiv over de fleste af mine skriverier i markdown-format.

Men nu er markdown jo reelt bare tekst-filer. Så for eftertidens skyld ville jeg ændre endelsen på mine markdown filer fra md til txt.

Tusindvis af filnavne skulle ændre. Manuelt ville det tage lang  tid.

Der var heldigvis en nemmere løsning.

Den nyeste udgave af  MacOs har zsh som shell, og her er det nemt. Først skel der  installeres en extension til zsh som hedder zmv.

```
autoload -U zmv
```

Så skal alle .md fil-endelser laves om til .txt fil-endelser.

```
zmv '(*).md' '$1.txt'
```

Så er det gjort.

PS. Lad være at gøre dette hvis dit program kun tolker filernes  markdown markup hvis filen har md-endelse.
