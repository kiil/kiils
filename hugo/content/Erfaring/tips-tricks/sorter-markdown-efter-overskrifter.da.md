---
title: Sorter markdown dokument
description: "Sorter sektioner i markdown"
summary: "Sorter sektioner i markdown"
date: 2019-07-27
# draft: true

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
  - sortering

tools:
  - perl
  - terminal


# thumbnail: ""
---

Sorter sektioner i markdown. For eksempel efter #

Sorter # b mellemrubrik efter # a mellemrubrik.

```
#B
a content of B

#A
b content of A
```

til

```
#A
b content of A

#B
a content of B
```

I terminal med

```perl
perl -0777 -ne '
    (undef,@paragraphs) = split /^#(?=[^#])/m;
    print map {"#$_"} sort @paragraphs;
' file.md
```


For yderligere info se også [svar her](https://stackoverflow.com/questions/25351917/sort-markdown-file-by-heading)
