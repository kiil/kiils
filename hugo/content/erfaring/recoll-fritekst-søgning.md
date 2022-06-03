+++
#draft = true
#genrer =
title = 'Sådan holder man styr på 10.000 tekster'
skribenter = ['lennart-kiil']
date = 2022-05-30T08:40:17+02:00
show_reading_time = true
#description = 'Endelig et ordentligt offline søgeværktøj'
#summary = 'Endelig et ordentligt offline søgeværktøj'
keywords = ['Recoll']

#featured_image =
#thumbnail =

#toc = true
#katex = true

#cases =
#cm =
emner = ['Fritekstsøgning', 'Indholdsstyring']
tools = ['Recoll']
+++

Hvordan holder man styr på sine egne tekster når man har over 10.000 af dem på sin laptop?

Svaret er lokal fritekstsøgning.

MacOS har spotlight indbygget som er okay til formålet, men alligevel lidt for begrænset.

Jeg har brugt en del tid på at finde et værktøj som kunne indeksere mine filer på en ordentlig måde, så jeg altid hurtigt kunne finde noget i en tekst som jeg havde behov for at vide eller bruge.

Recoll er sådan et værktøj og det findes både til mac, windows og unix / linux.

[Recoll finds your documents](https://www.lesbonscomptes.com/recoll/)

Recoll er baseret på Xapian som er en open source søgemaskine.

[The Xapian Project](https://xapian.org/)


Recoll har både en grafisk brugerflade og kan bruges fra kommandolinjen.

Jeg mangler dog en enkelt ting, fordi jeg sjældent arbejder med pdf eller docx eller lignende, så er sidenumre ikke så relevante for mig.

Men når jeg hovedsageligt skriver tekster til digitale medier direkte i plain tekst eller markdown format, som jo også bare er tekst, så er linjenumre til gengæld enormt praktiske at have med i snippets fra en overordnet fritekstsøgning.

Jeg har derfor efterspurgt en feature i Recoll her

[exposing line numbers in snippets (#156) · Issues · Jean-Francois Dockes / recoll · GitLab](https://framagit.org/medoc92/recoll/-/issues/156)
