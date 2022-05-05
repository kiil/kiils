---
title: "Sidetal væk fra forsiden i pdf over Pandoc fra markdown"
description: "Nogle gange vil man ikke have sidetal på titel-siden"
summary: "Nogle gange vil man ikke have sidetal på titel-siden"
date: 2020-07-12
# draft: true

show_reading_time: true

# toc: true
# katex: true



skribenter:
  - lennart-kiil

keywords:
  - latex
  - markdown
  - txt
  - indhold

emner:
  - tips
  - tricks
  - redigering
  - indhold


tools:
  - latex
  - terminal
  - atom
  - pandoc
---


Først fjernes sidenumre generelt i frontmatter:

```
---
header-includes: |
    \pagenumbering{gobble}
...
---
```

Så indsættes sidenumre nede i selve dokumentet:

```
\pagenumbering{arabic}

...
```

På den måde får man fjernet sidetal fra forsiden, hvor titlen er, og igen indsat sidetal længere fremme i selve dokumentet.
