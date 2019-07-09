---
title: Bevar whitespace i output med &nbsp;
description: ""
summary: ""
date: 2019-07-09
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

emner:
  - tips
  - tricks




# thumbnail: ""
---

Non breaking space ´&nbsp; ikke bare non breaking, den er også 'non collapsing' og kan derfor bruges til at bevare whitespace i html output i browsere, pdf-output i dokumenter og lignende.

```
Text





Text
```
giver

Text

Text

Mens


```
Text
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
Text
```
giver

Text
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
Text
