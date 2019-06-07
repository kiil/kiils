---
title: FOLKETS meget hurtigere efter drop af bannere
description: "Nu er der data nok til at konkludere noget mere håndfast."
summary: "Nu er der data nok til at konkludere noget mere håndfast."
date: 2019-06-07
# draft: true

show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

keywords:
  - frontend
  - folkets
  - ydelse
  - google-analytics

emner:
  - ydelse

tools:
  - google-analytics

cases:
  - folkets

kunder:
  -



thumbnail: "erfaringer/frontend/page-load.png"
---


For lidt over to uger siden droppede jeg bannere helt på FOLKETS.

De første resultater viste at det gav betydeligt hurtigere sider til brugerne.

Nu er der data nok til at konkludere noget mere håndfast i forhold til hastighed. Og til at se nærmere på de forskelige enheder:

![](/erfaringer/frontend/page-load.png)

Ikke overraskende er de største forbedringer der hvor der før var flest bannere. En halvering af tiden det tager at loade på tablet og laptop/desktop.

På mobil var der færre bannere og her er effekten mindre. En forbedring på knap 10 procent.

Mobil er også mere afhængig af ting som jeg ikke har indflydelse på såsom folks mobile dækning. Hvis folk sidder i toget eller andre steder med dårlig dækning, så kan ens site være nok så optimeret - så vil det stadig gå langsomt for brugeren.

Og det afspejler sig i at det er svært at få gennemsnitstiderne lige så langt ned som for enheder der er på mere stabile netværk.

Altså, en forbedring i snit på knap 10 procent på mobil. Betyder det så at ændringen har været omsonst for mobil?

Nej, man skal ikke lade sig snyde af gennemsnittet som især på mobil kan påvirkes af outliers, når folk sidder med en dårlig mobil forbindelse, og det tager måske 20 sekunder at hente en side. Det sker næppe ofte på tablets på wifi eller desktops på kablede forbindelser.

Og hvis vi ser på intervaller i stedet for gennemsnit, så er der en klar forbedring - også for mobil:

![](/erfaringer/frontend/intervaller.png)

Læg mærke til at uanset om vi ser på mobil eller tablet / desktop, så er der nu langt, langt flere end før i de gode, hurtige intervaller og langt, langt færre i de dårlige, langsomme intervaller.

Eksempelvis er der efter at jeg droppede bannere mange flere i intervallet 0-1 sekunder og i intervallet 1-3 sekunder. Og meget færre i intervallet 7-13 sekunder. På tværs af enheder.

_Det vil sige at hvadenten vi ser på mobil eller desktop, så er der nu langt færre end før som oplever FOLKETS som langsomt._

Hvis vi alene ser på hastighed og den brugeroplevelse der ligger i forbindelse hermed, så har valget om at fjerne bannere været en ubetinget succes på tværs af alle enhedstyper.

Senere vil jeg se på hvad det har betydet for andre faktorer såsom tid brugt på sitet, afvisningsrate og konvertering.
