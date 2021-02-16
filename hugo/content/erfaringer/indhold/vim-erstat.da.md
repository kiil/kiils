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
You don't need to use the slash character as the expression delimiter. Whatever character follows the :s is defined to be the delimiter character. You can use most non-alphanumeric characters (but not \, " or |). 

Kun på søgeordet nærmest cursoren

```
:s/[pattern]/[replacement]
```
Eksempel:

```
:s/han/hun
```


Kun på den linje hvor cursoren befinder sig

```
:s/[pattern]/[replacement]/g
```
Eksempel:

```
:s/han/hun/g
```

Hele filen

```
:%s/[pattern]/[replacement]/g
```
Eksempel:

```
:%s/han/hun/g
```

Hvis hvert tilfælde skal bekræftes tilføjes et `c` for confirm, sådan her:

```
:%s/han/hun/gc
```






