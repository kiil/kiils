+++
#draft = true
#genrer = ['howto']
title = 'Kan chatGPT bruges til kvantitativ tekstanalyse?'
skribenter = ['lennart-kiil']
date = 2023-01-10
show_reading_time = true
#description = ''
#summary = ''
#keywords = ['']

#featured_image =
#thumbnail =

#toc = true
#katex = true

#cases = ['']
#cm = ['']
emner = ['nlp','kunstig intelligens','kvantitativ tekstanalyse']
tools = ['chatGPT']
+++


En simpel form for kvantitativ tekstanalyse er ordfrekvensanalyse.

Jeg har skrevet lidt om hvordan man kan lave [ordfrekvensanalyse i nushell](./nushell) og hvordan man kan lave ekstremt hurtig [ordfrekvensanalyse på store mængder tekst med nushell og polar dataframes](./nushell-dataframes).

Nushell gav mig følgende resultat

```

╭─────┬───────────────────┬────────╮
│   # │         0         │ counts │
├─────┼───────────────────┼────────┤
│   0 │ verden            │      5 │
│   1 │ verdensopfattelse │      4 │
│   2 │ mainstream        │      4 │
│   3 │ dag               │      4 │
│   4 │ begynder          │      3 │
│   5 │ alternative       │      3 │
│   6 │ hele              │      3 │
│   7 │ frelser           │      3 │
│   8 │ ting              │      2 │
│   9 │ magtfuld          │      2 │

```

på en tekst jeg skrev engang om livsfarlige konspirationsteorier: [Nekrolog for en konspirationsteoretiker - leger du også med ilden?](https://www.folkets.dk/node/4401)

Og nushell med dataframes brugte kun 3 ms på det.

Så hurtig var chatGPT slet ikke faktisk har du sikkert lagt mærke til at den ofte er ret langsom. Men jeg fik alligevel nogle brugbare svar:

**Indledende prompt:** du er tekstanalytiker. jeg vil bede dig analysere teksten i den næste prompt jeg sender dig. Du skal give mig en liste over de mest brugte ord. Listen må ikke indeholde stopord.

**chatGPT:** Ja, jeg kan analysere tekst for dig og give dig en liste over de mest brugte ord. Men først, vil du bede om give mig tekst for analysere?
And please remember that my language model is in english and to make sure I understood your request correctly, please write in english, If possible.

(Jeg vælger at ignorere chatGPT's anmodning at skrive på engelsk - jeg lægger i stedet min føromtalte tekst om konspirationsteorier ind i næste prompt)

**Prompt:** [Her indsætter jeg bare hele min tekst]

(Nu havde jeg jo faktisk glemt at sætte antal på i mit indledende prompt, det var dumt af mig for chatGPT giver mig en lang liste over ord fra min tekst, dog uden stopord, så det er godt.)

**chatGPT:** [lang liste over alle ord fra min tekst minus almindelige stopord]

**Prompt:** tak. giv mig kun de ti mest brugte ord i den tekst jeg gav dig før

```
**chatGPT: 

Her er de ti mest brugte ord i den tekst, du gav mig:

Verdensopfattelse
Konspirationsteoretiker
Mainstream medierne
Alternative
Manipulerer
Skeptisk
Magtfulde
Hændelser
Elite
Frelser

Bemærk at "verdensopfattelse" og "konspirationsteoretiker" er de mest brugte ordene i teksten, og "mainstream medierne", "alternative", "manipulerer", "skeptisk" er de ord, der også bruges ofte i teksten, som relaterer direkte til emnet.


```

Interessant. Den rammer nogle af ordene, men har udeladt 'verden' som er det mest anvendte ord i teksten. Og ikke er et stopord.

Så meget mindre nøjagtigt resultat, og den brugte meget, meget længere tid på at svare end dataframes i nushell.

Men lad os prøve at spørge lidt mere ind til resultatet:

**Prompt:** kan du fortælle mig anal gange hvert ord blev brugt
This content may violate our content policy. If you believe this to be in error, please submit your feedback — your input will aid our research in this area.

**chatGPT:** Desværre kan jeg ikke give dig præcis *antal gange hvert ord blev brugt* i den givne tekst, da det kræver en teknologi som ikke er tilgængelig for mig. Men jeg kan give dig en liste med *ordene og deres hyppighed i teksten*.

(jeg har markeret en selvmodsigelse som i min erfaring er typisk for chatGPT)

**Prompt:** så gør det

```

chatGPT

Her er listen over ordene fra min tidligere analyse og deres hyppighed i teksten, arrangeret fra højest til lavest:

Verdensopfattelse: 8
Konspirationsteoretiker: 8
Mainstream medierne: 7
Alternative: 6
Manipulerer: 6
Skeptisk: 5
Magtfulde: 5
Hændelser: 4
Elite: 4
Frelser: 4

Bemærk at dette er en skønnet hyppighed baseret på den tekst, jeg modtog, og der kan være mindre variationer i antallet.

```

Tak for det lille forbehold. For ordet 'verdensopfattelse' indgår faktisk kun i teksten fire gange, og chatGPT overdriver også de andre ords hyppighed.

Konklusion: Man skal være varsom med at bruge chatGPT til kvantitativ tekstanalyse. Den rammer noget, men slet ikke præcist nok.


Næste gang prøver jeg på engelsk :)
