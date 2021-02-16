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

Kommandoer som J for join.  For eksempel 4J for at  samle fire linjer til at afsnit.  Det kan man spare meget tid med. ( og ) flytter frem og tilbage i sætninger som på den måde kan splittes også vis og vas kan bruges. Specifikt vasA-slet-retur.

 Thus: :.,$j meaning "from the current line to the last line, join them all into one line". :% is synonymous with :1,$ (all the lines).

f. er også en hurtig med at springe  frem til næste  punktum i linjen - og dermed  typisk slutningen  på  en sætning. Så

o  hurtig måde at indsætte  linje og gå i insert efter linjer stort O hurtigt indsætte  og gå i insert før.

En hurtig måde at  fjerne en sætning på midt i et afsnit er (c) - med kan der skrives  en ny. Hurtigere er dog nok tekstobjekter - fx.  cas hvis der skal sættes noget andet ind i sætningens sted. Hvis den bare skal slettes så das.

Jeg bruger ofte slutningen af filen til at opbevare ting som endnu ikke er indarbejdet rigtigt i teksten. Det kan jeg lynhrtiggt hoppe ned til med G. Og så tilbage ti seneste sted inden med ctrl-o   

The quickest way is to hit either:

''

(two apostrophes) or:

``

(two backticks). Note that the difference is that the backtick goes to the same location on the line, whereas the apostrophe goes to the start of the line. On a UK keyboard, the apostrophe is more accessible, so I tend to use that one.

ou can also use g; and g, to move backward and forward in your edit locations.

'' or `` switch between the last position and the current position. CtrlI and CtrlO work through the jump list history.

g; and g, move through edit positions, which are also very frequently used.

### jumplist 

If you want j and k to be added to the jump list, you can do so using a mark. Reddit user PlayMeWhile provided the following solution. Add this to your .vimrc and CTRL-o and i will work as expected.
Image for post
Add this in your .vimrc

## Register

## Marks

I've always done by it setting a mark.

In command-mode, press m[letter]. For example, ma sets a mark at the current line using a as the mark identifier.

To get back to the mark press ' [letter]. For example, 'a takes you back to the line mark set in step 1. To get back to the column position of the row where you marked the line, use `a (back-tick [letter]).

To see all of the marks that currently set, type :marks.

On a slightly unrelated note, I just discovered another nifty thing about marks.

Let's say you jump to mark b by doing mb. Vim automatically sets the mark ' (that's a single-quote) to be whichever line you were on before jumping to mark b.

That means you can do 'b to jump to that mark, then do '' (2 single-quotes) to jump back to wherever you were before.

I discovered this accidentally using the :marks command, which shows a list of all marks.


action	 
/re	… search to string expression re
?re	… search backwards to string expression re
n	… next result
N	… previous result
*	… search for word under cursor
#	… search backwards for word under cursor
gd	go to 1st occurence of word under cursor
%	jump to end of matching brackets (or meta-tags – requires match-it plugin)

action	 
zO	open all nested folds
zr	open highest level fold
zR	open all folds of all levels
zc	close all folds
zm	close all highest level of open folds
zM	close all folds of all levels
space	toggle current fold level



5. Delete in insert mode
To delete a character, word or line while in Insert mode, Vim Command Line mode or Shell Command Line  we have the following shortcuts available:

<C-h> " delete back one character (backspace)
<C-w> " delete back one word
<C-u> " delete back to start of line
<C-k> " delete forward to end of line

----

Pad


VIM
