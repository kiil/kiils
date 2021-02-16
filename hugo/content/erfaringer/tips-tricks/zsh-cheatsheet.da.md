---
title: "zsh cheatsheet"
description: "Plus en bonus"
summary: "Plus en bonus"
date: 2020-09-13
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
  - automatisering


tools:
  - zsh
  - terminal


# thumbnail: ""
---


```
mv $(grep -il "#s0" *.txt) ../ARKIV
```

```
pdt *.txt(om[1])
```

pdt er mit eget alias for pandoc med toc.

Og `*.txt(om[1])` tager den seneste ændredede fil. `om` er order modified. Med stort `O` ville samme kommando have vendt rækkefælden så man fik den fil som var blevet ændre for længst tid siden.

```
mv *.txt(.m+31) ../ARKIV
```

Flyt alle txt-filer, som ikke er blevet ændret de seneste 31 dage, til ARKIV.

zsh er rigtig god til den slags.