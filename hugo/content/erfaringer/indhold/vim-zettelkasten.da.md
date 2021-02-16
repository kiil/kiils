---
title: 'vim cheat sheet'
show_reading_time: true
skribenter:
  - lennart-kiil
date: '2020-09-21'

toc: true

emner:
  - Indholdshåndtering

tools:
  - Vim

---

<tal>(subjekt<tal>objekt)

2d2w = 4dw = d4w

2d2w = 4d1w = 1d4w

For at arbejde effektivt, hurtigt og kreativt, så foretrækker jeg at splitte skriveproces og redigeringsproces op.

Derfor er jeg gladd for at vim har to modes som passer til det worflow. Og når jeg reidgerer vil jeg helst blive i normal mode.


## Blive i normal

----

r - i normal-mode udskift (replace) et tegn under cursoren uden at skifte til insert

----

### Slet

Bemærk at slet også kopierer over i default registeret

d - Deletes highlighted text

dd - Deletes a line of text

### Andet

dG 

yy - Copies a line

yw - Copies a word

y$ - Copies from where your cursor is to the end of a line

v - Highlight one character at a time using arrow buttons or the h, k, j, l buttons

V - Highlights one line, and movement keys can allow you to highlight additional lines

p - put ind Paste whatever has been copied to the unnamed register





dw - Deletes a word

de - som dw men tager ikke efterfølgende mellemrum med væk

D - Deletes everything from where your cursor is to the end of the line

d0 - Deletes everything from where your cursor is to the beginning of the line

dgg - Deletes everything from where your cursor is to the beginning of the file

dG - Deletes everything from where your cursor is to the end of the file

x - Deletes a single character under cursoren delete
X - sletter et tegn til venstre for cursoren backspace

u - Undo the last operation; u# allows you to undo multiple actions

Ctrl + r - Redo the last undo

. - Repeats the last action

## Fra normal til insert

----



ce = sletter fra og med cursor og resten af ordet

cc sletter hele linjen og går i inser 

C slet fra cursor og resten af linjen og gå i insert

o ny linje under

O ny linje over

s slet tegn og gå i insert

----

