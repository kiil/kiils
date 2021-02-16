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

:bn - Switch to next buffer

:bp - Switch to previous buffer

:bd - Close a buffer

:sp [filename] - Opens a new file and splits your screen horizontally to show more than one buffer

:vsp [filename] - Opens a new file and splits your screen vertically to show more than one buffer

:ls - Lists all open buffers

Ctrl + ws - Split windows horizontally

Ctrl + wv - Split windows vertically

Ctrl + ww - Switch between windows

Ctrl + wq - Quit a window

Ctrl + wh - Moves your cursor to the window to the left

Ctrl + wl - Moves your cursor to the window to the right

Ctrl + wj - Moves your cursor to the window below the one you're in

Ctrl + wk - Moves your cursor to the window above the one you're in


Just like any browser, you can also use tabs within Vim. This makes it incredibly easy to switch between multiple files while you're making some code changes instead of working in one single file, closing it, and opening a new one. Below are some useful Vim commands for using tab pages:

:tabedit file - opens a new tab and will take you to edit "file"

gt - move to the next tab

gT - move to the previous tab

#gt - move to a specific tab number (e.g. 2gt takes you to the second tab)

:tabs - list all open tabs

:tabclose - close a single tab


