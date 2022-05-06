---
title: 'Hurtigere alternativer til find og grep på Raspberry Pi'

# summary bruges i snippets på interne oversigter
summary: 'Hurtige værktøjer på en langsom computer'


# description bruges i og:description
description: 'Hurtige værktøjer på en langsom computer'

# images bruges i og:image
#images:
#- folderundercontent/filnavn




# toc sættes ved længere tekster med mellemrubrikker til true
toc: false

# vigtig related similar content
#keywords:
# - rubrikker
# - redigering
# - blikfang

show_reading_time: true
skribenter:
  - lennart-kiil
date: '2022-05-06'
emner:
  - CLI
  - KISS
  - Effektivisering
tools:
  - Raspberry Pi
  - fd
  - rg
  - find
  - grep
  - Hugo
---


Raspberry Pi er ikke nogen hurtig computer. Eller jo, hvis man måler dens ydelse op imod dens strømforbrug, så er den ganske imponerende.

Men den bruger næsten ingen strøm og er sammenlignet med en moderne laptop ret langsom.

For eksempel så tager det cirka 1 sekund at danne hele dette website via static site generatoren Hugo på min Raspberry Pi 4B, mens det tager cirka et kvart sekund på min macbook pro.

Jeg lagde også mærke til at kommandoen `find` var ret langsom. Men så installerede jeg bare `fd` som både er hurtigere for mig og meget nemmere at bruge og forstå.

`find` virker omstændelig i sin syntaks, `fd` er nem at gå til. Meget simplere. Så den er for mig både hurtigere i brug og hurtigere i sin søgen på computeren.

Jeg har også installeret `rg` som erstatning for eller supplement til `grep`. Her ved jeg dog ikke om der er så stor en forskel for mig som med `find` og `fd`.
