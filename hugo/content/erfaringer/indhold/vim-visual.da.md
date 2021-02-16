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

```
V
```

Visual mode allows you to select a block of text in Vim. Once a block of text is selected you can use visual commands to perform actions on the selected text such as deleting it, copying it, etc.

v - starts visual mode, you can then select a range of text, and run a command

V - starts linewise visual mode (selects entire lines)

Ctrl + v - starts visual block mode (selects columns)

ab - a block with ()

aB - a block with {}

ib - inner block with ()

iB - inner block with {}

aw - mark a word

Esc - exit visual mode
