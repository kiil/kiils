+++
#draft = true
#genrer =
title = 'Smarte søgefunktioner i Recoll'
skribenter = ['lennart-kiil']
date = 2022-05-31T12:24:26+02:00
show_reading_time = true
#description = ''
#summary = ''
keywords = ['Recoll']

#featured_image =
#thumbnail =

#toc = true
#katex = true

#cases = ['']
#cm = ['']
#emner = ['']
tools = ['Recoll']
+++

Noget af det jeg manglede i MacOS Spotlight søgemaskinen var en mere omfattende syntaks for søgning.

Recoll er både smart og omfangsrig på det område.

## Stemming

Recoll er bygget på Xapian som faktisk har en dansk stemming-mekanisme.

Stemming finder roden af et ord og de forskellige afledninger. På den måde får man flere resultater på en søgning, og nogle af dem vil være relevante nok.

```
> recollq -s danish bilerne | count
167
```

Men hvad nu hvis man kun vil søge på en bestemt form af et ord?

Stort forbogstav slår ganske enkelt stemmning fra:

Så `Bilerne` kun søger på 'bilerne', mens `bilerne` søger på 'bilerne', 'biler', 'bil' etc.


```
> recollq -s danish Bilerne | count
4
```

Så jeg har altså kun fire tekster i mit arkiv hvor præcist bil indgår i bestemt flertal.

Stemming er heller ikke slået til når man søger en frase som for eksempel `"bilerne er"` da fraser jo er bogstavelige.


## Nærhed (proximity)


Søgning efter 'dansk' eller 'politik' med dansk stemming:

```
> recollq -s danish 'dansk politik' | count
507
```

Uden stemming

```
> recollq 'dansk politik' | count
110
```

Så snart man søger på en frase gør stemming ingen forskel:

```
> recollq -s danish '"dansk politik"' | count
53
```

```
> recollq '"dansk politik"' | count
53
```

Accepterer man op til 5 ord imellem, men stadig sammen rækkefølge af søgeord:

```
> recollq '"dansk politik"o5' | count
57
```

Og hvis rækkefølgen er ligegyldig stiger antal søgeresultater i det her tilfælde en smule:

```
> recollq '"dansk politik"p5' | count
61
```


## Vægt og prioritet

Hvis et søgeord i en forespørgsel er ekstra vigtigt, kan det gives en højere vægt.

For eksempel giver

```
> recollq -n 1 '"dansk"10 politik'
Recoll query: Query((5 * dansk AND politik))
[file:///home/lk/TEKST/ARKIV/undertrykt-stakke-revolution-dansk-politik.da.md]
```

```
> recollq -n 1 'dansk "politik"10'
Recoll query: Query((dansk AND 10 * politik))
[file:///home/lk/TEKST/ARKIV/BACKUP/Folkets Avis/Indhold/Ledere/Et vendepunkt i dansk politik.txt]	
```

to forskellige resultater i mine tekster hvor sidste resultat er en tekst hvor 'politik' fylder mere end i første.

Et helt tredje resultat får jeg ved

```
recollq -n 1 'dansk -politik'
```


for her er alle tekster med 'politik' i sorteret fra.

