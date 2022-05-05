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

draft: true
---
:ba open each buffer in "window" / "split"
 :enew doesn't take any arguments and opens a blank buffer. Kræver ikke filnavn
:new in new window / split
 :edit closes my existing buffer.

:buffers: List available buffers
:ls: Same as above
:bn: Switch to next buffer
:bp: Switch to previous buffer
:bfirst: Switch to first buffer
:blast: Switch to last buffer
:bdelete: Delete the current buffer
:badd: Open a new buffer with the filename that follows
:e: Edit another file in a new buffer and switch to it. også :edit  - kræver filnavn
