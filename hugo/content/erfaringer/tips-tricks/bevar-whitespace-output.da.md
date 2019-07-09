---
title: Bevar whitespace i output med &nbsp;
description: ""
summary: ""
date: 2019-07-09
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

emner:
  - tips
  - tricks




# thumbnail: ""
---

Non-breaking space – `&nbsp;` – er ikke bare non-breaking, den er også 'non-collapsing'.

Som du kan [læse på wikipedia](https://en.wikipedia.org/wiki/Non-breaking_space):

> Non-collapsing behavior
A second common application of non-breaking spaces is in plain text file formats such as SGML, HTML, TeX and LaTeX, whose rendering engines are programmed to treat sequences of whitespace characters (space, newline, tab, form feed, etc.) as if they were a single character (but this behavior can be overridden). Such "collapsing" of whitespace allows the author to neatly arrange the source text using line breaks, indentation and other forms of spacing without affecting the final typeset result.

> In contrast, non-breaking spaces are not merged with neighboring whitespace characters when displayed, and can therefore be used by an author to simply insert additional visible space in the resulting output without using spans styled with peculiar values of the CSS “white-space” property. Conversely, indiscriminate use (see the recommended use in style guides), in addition to a normal space, gives extraneous space in the output.

 Derfor kan `&nbsp;` bruges til at bevare whitespace, altså tomrum - herunder blanke linjer, i html-output i browsere, pdf-output i dokumenter og så videre, når kilden er en tekst-fil, markdown eller anden 'ren tekst'-baseret fil.

 Eksempler:

```
Text





Text
```
giver

----

Text

Text

----

Mens


```
Text

&nbsp;

&nbsp;

Text
```
giver

----

Text

&nbsp;

&nbsp;

Text

----
