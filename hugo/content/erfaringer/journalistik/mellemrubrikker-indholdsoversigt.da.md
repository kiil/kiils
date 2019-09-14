---
title: "Mellemrubrikker som indholdsoversigt"
description: "Det handler om at give læseren overblik"
summary: "Det handler om at give læseren overblik"
date: 2019-08-09
# draft: true

show_reading_time: true

# toc: true
# katex: true


skribenter:
  - lennart-kiil

keywords:
  - journalistik
  - brugervenlighed

emner:
  - journalistik
  - brugervenlighed

tools:
  - markdown

cases:
  - folkets




# thumbnail: ""
---

Da jeg for nylig udvidede min profilside på FOLKETS, som du kan finde her: [Lennart Kiil][f], lavede jeg en indholdsoversigt baseret på mellemrubrikkerne i teksten.

Det viste sig hurtigt at Google i søgeresultatet tog højde for dette ved at linke direkte til nogle af de mellemrubrikker som jeg havde angivet i indholdsoversigten og i selve mellemrubrikkerne med `id`.

Indholdsoversigten er teknisk set en uordnet liste.

Så

```html
<li><a href="#journalistisk-deklaration">Journalistisk deklaration</a></li>
```

linker til længere nede

```html
<h2 id="journalistisk-deklaration">Journalistisk deklaration</h2>
```


[f]: https://www.folkets.dk/brugere/lennart-kiil
