---
title: "Sidetal væk fra forsiden i pdf fra Pandoc fra markdown"
description: "Sorter sektioner i markdown"
summary: "Sorter sektioner i markdown"
date: 2020-07-12
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
---


Først fjernes sidenumre generelt i frontmatter:

```
header-includes: |
    \usepackage{sectsty}
    \sectionfont{\clearpage}
    \pagenumbering{gobble}
```

Så indsættes sidenumre nede i selve dokumentet:

```
\pagenumbering{arabic}
```
