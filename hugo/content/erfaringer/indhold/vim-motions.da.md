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

If you type A after G you will enter insert mode at the end of the last line.

If you just want to go to the last character, then G-End will suffice

## Exchange

https://github.com/tommcdo/vim-exchange

Virker også på tekstobjekter

## Transpose two characters

In Emacs, you have C-t (transpose-chars) which transposes the two characters before the cursor, for instance to turn normla into normal. The equivalent keypress in Vim is xp (or Xp, depending on cursor position): Delete a character and put it after the following character.



t = til 

fx ctf = sletter indtil første f i linjen og sætter i insert.

T går den anden vej

f det samme men inklisive det valgte bogtav
## Kommandoer

### Generelt

```
:set nu
```
linjenummer til 

```
:set nu!
```

linjenummer fra
 



## Bevægelse

Generelt for bevægelse gælder at det sted man er, tæller med. Alrtså at bevægelsen sker fra cursorens position.

```
<antal>[retning og objekt]
```




### Tegn

```
h
```

tegn tilbage

```
l
```

tegn frem


```
<tal>go
```

Absout fra start af fil




Character Movement
The f and F commands are extremely useful for navigating within a line. Pressing f{char} will move the next occurrence of {char} within the current line. Meanwhile, F will move backwards. A numerical count argument can also be supplied, so 2f: will go to the second occurrence of : after the current cursor position.
To move before the matching character, t and T can be used. The last ftFT can be repeated by pressing ;.

### Linjer

```
k
```

linje op

```
j
```

linje ned

gg eller 1G gå tilbegyndelse af tekst

G gå til slutningen af teksten

\<tal>G gå til linje-\<tal>

eller <tal>gg




### Ord

```
b
```

til start af ord og hvis allerede i starten af ordet så til start af forrige ord.

```
w
``` 

til start af næste ord eller til punktuation.

```
e
``` 

til slut af ord eller slut af næsten ord hvios allerede ved slut - stopper også ved punktution.

```
ge
```

 til slutningen af forrige ord. Stopper også ved punktuation.


Typing E, W, or B will perform a similar operation, but won't count symbols or punctuation as separate words. 

### Sætninger

```
)
``` 

Til start af næste sætning.

```
(
``` 

Til start af denne, hvis allered epå start så start af forrige.

### Afsnit

```
}
``` 

Afsnit frem.

```
{
``` 


Afsnit ilbage.

### Søgning

Søgning åbner i  kommandolinjen og kræver derfor retur for at udføre.

```
/[søgeord]
```

går til første sted

```
2/[søgeord]
```

d/rails - delete up until the first search match for “rails”

går direkte til andet sted søgeordet forekommer

/ - search for any word in the file
n - repeat last search
N - repeat last search in opposite direction

### "inline" søgning

f<char> - (f)ind a character forward in a line and move to it
T<char> - find a character backward in a line and move un(t)il it

t<char> - find a character forward in a line and move un(t)il it (one character before)
F<char> - (f)ind a character backward in a line and move to 

; "Repeat latest f, t, F or T [count] times."
, Modsat  retning

I find f and t very useful in combination with d and c. For example, ct: will let you replace everything from your cursor up to the next colon, but not delete the colon. You can remember it as "change to colon".

I prefer vt:c because you don't spot always spot each occurrence of a given letter 100% correct. With v you can see the visual selection, a nice visual cue

 2fx to jump to the second x on the line.


### Skærm

Bevæggelser relativt til det synlige område i vinduet:

Screen Positioning
In command mode, I often find myself scrolling the screen by half increments using ctrl u and ctrl d. The equivalent full screen commands are ctrl f and ctrl b. Page up and page down may also work depending on your configuration.
Pressing z and then return will move the current line to the top of the screen. A number will move that line number to the top of the screen, so pressing 50z and then return will make the top of the screen start at line 50. Conversely, z. will move the current line to the centre of the screen, and z- will move to the bottom.
To move within a screen without scrolling it, H is useful because it'll move the cursor to the top line. M shifts it to the middle, and then L moves it to the last line.


Click ‘zz’ to recenter the page so that your cursor is at the center

z.	Center the screen on the cursor
zt	Scroll the screen so the cursor is at the top
zb	Scroll the screen so the cursor is at the bottom


Screen Positioning
In command mode, I often find myself scrolling the screen by half increments using ctrl u and ctrl d. The equivalent full screen commands are ctrl f and ctrl b. Page up and page down may also work depending on your configuration.
Pressing z and then return will move the current line to the top of the screen. A number will move that line number to the top of the screen, so pressing 50z and then return will make the top of the screen start at line 50. Conversely, z. will move the current line to the centre of the screen, and z- will move to the bottom.
To move within a screen without scrolling it, H is useful because it'll move the cursor to the top line. M shifts it to the middle, and then L moves it to the last line.
All of these commands are easy to remember with some simple mnemonics:
up
down
forward
back
Home
Middle
Last
Word Movement
To move to the end of the next word, use e. The opposite is b, which moves backwards a word. The w command also moves forwards, but leaves the cursor at the start of the word.
Typing E, W, or B will perform a similar operation, but won't count symbols or punctuation as separate words. When I'm programming I find myself using these versions.

### Tekstobjekter

Når jeg redigerer almindelige tekster, jeg bruger ikke vim til programmering, så er tekstobjekter enormt effektive fordi de tillader hurtigt redigering af ord, sætninger og afsnit uden at cursoren skal placeres i starten af ord, sætninger eller afsnit for at lave en hanlding på hele dette "tekstobjekt". 

Kræver en handling.

a eller i skal anngives.

```
<antal>[handlingyi][i||a][tekstobjekt]
```

hvis antal ikke angives antages 1.

Motion Commands vs. Text Objects Commands
A command using a motion, e.g., cw, operates from the current cursor position. A command using a text-object, e.g., ciw operates on the whole object regardless of the cursor position. We saw this behavior in each of the various plaintext text objects. Although this requires one more character, it saves you the time and effort of moving the cursor into the “right” position.

https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/

Using Text Objects
You can think of text objects as a kind of “noun” that can be used in place of motions to define a range of text from anywhere within it. Let’s look at some examples:

iw, aw - inner word, a word
ip, ap - inner paragraph, a paragraph
i), ap - inner parenthesis, a parenthesis
i', a' - inner single quote
i", a" - inner double quote
it, at - inner tag, a tag
Check out this blogpost for a nice rundown of the different text objects available and practical examples.

You can also get a full listing from within Vim by typing :h text-objects.


### Ord

```
daw
```

sletter et ord inklusive efterfølgende mellemrum. I modsætning til ```dw``` er det ligegyldigt hvor i ordet cursoren befinder sig.


```
diw
```

sletter et ord eksklusive efterfølgende mellemrum.


### Sætning

```
das
```

sletter en sætning inklusive efterfølgende mellemrum.


```
dis
```

sletter en sætning eksklusive efterfølgende mellemrum.

### Afsnit


```
das
```

sletter et afsnit iklusive efterfølgende mellemrum.


```
dis
```

sletter et afsnit eksklusive efterfølgende mellemrum.

The operator either affects whole lines, or the characters between the start
and end position. Generally, motions that move between lines affect lines
(are linewise), and motions that move within a line affect characters (are
characterwise). However, there are some exceptions.

Der.

### Flytte rundt

gg eller 1G gå tilbegyndelse af tekst

G gå til slutningen af teksten

\<tal>G gå til linje-\<tal>


```
<tal>go
```

Absout fra start af fil


### Ændringer

I normal-mode går ctrl+r+tal til seneste ændring, hvor 0  er seneste 1 er næstseneste etc.



### Tekstmanipulation

```
ciw
``` 

```
cw
``` 



das slet en sætning

dap slet et afsnit

```
    1 "This first word should overwrite the second"
    
    yiw     yank inner word (copy word under cursor, say "first").
    ...     Move the cursor to another word (say "second").
    viwp    select "second", then replace it with "first".
```

```bash
[antal] handling [antal] objekt
```

antal = 1 med mindre andet er angivet.

autocompletion (using```CTRL-p```and```CTRL-n```),

https://www.linux.com/training-tutorials/using-spell-checking-vim/

```
:set lbr

:set spell spelllang=da
```

To delete_blank lines_in vim (empty lines), use this vim command in “last line mode”:

    :g/^$/d
