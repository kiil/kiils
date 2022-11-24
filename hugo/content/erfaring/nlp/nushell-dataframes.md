+++
#draft = true
genrer = ['howto']
title = 'Uhyre hurtig tekstanalyse med dataframes i Nushell'
skribenter = ['lennart-kiil']
date = 2022-11-24 10:30:00
show_reading_time = true
#description = ''
summary = 'Uhyggelig hurtig tekstanalyse med dataframes'
#keywords = ['']

#featured_image =
#thumbnail =

#toc = true
#katex = true

#cases = ['']
#cm = ['']
emner = ['nlp']
tools = ['nushell']
+++

Sidste gang skrev jeg om en simpel måde at lave ordfrekvensanalyse på, i nushell.

Det virkede helt efter hensigten, men det viste sig at metoden kun var hurtigt - og hurtig er for langsomt:


```
benchmark {                                                                                           11/08/2022 11:00:49 
::: let stopwords = ( open stopord.txt | lines | wrap stopord )
::: let tidy = ( open livsfarlige-konspirationsteorier.da.md | str downcase | split words | wrap ord | where ord in $stopwords.stopord == false )
::: $tidy.ord | uniq --count | sort-by count --reverse }

```
gav

```
145ms 516µs 353ns
```

som svarer til at metoden kan klare omkring syv relativt korte tekster i sekundet, vel at mærke hvis metoden skalerer lineært.

Det er for langsomt hvis man har mange eller lange tekster. Eller begge dele.

For eksempel har jeg selv gennem min karriere skrevet `11538` tekster.

Så ville det tage cirka en halv time for mit lille script at arbejde sig igennem dem. Det er alt for lang tid.

Så lad os prøve noget andet.

Nushell har også dataframes som er kendt for at være en hurtig måde at behandle data på.

Det er relativt simpel at bygge et lille script som bruger dataframes til ordfrekvensanalyse.

Her er hvad jeg har frembragt:


    # Word frequency analysis
    def words [
      filename: string # Text file
    ] {
      let stopwords = (open ~/GD/TEKST/stopord.txt | lines | into df)
      let corpus = (open $filename | str downcase | split words | into df)
      let mask = ($corpus | is-in $stopwords)
      let tidy = ($corpus | filter-with ($mask | df-not))
      let frequency = ($tidy | value-counts)
      let sorted = ($frequency | sort-by counts | reverse)
      $sorted
    }


Og hvis jeg kører det script på filen fra sidste gang, så bliver resultatet


```
benchmark { words livsfarlige-konspirationsteorier.da.md }

```
tadaaa

```
3ms 149µs 424ns
```



Tre tusindedele af et sekund. Det er fair nok.

Hvis metoden skalerer lineært, vil det altså tage under et minut at analysere alle mine 11537 tekster.

Ud over at dataframes er meget hurtigere end den metode jeg præsenterede sidst, så er resultatet ellers det samme:

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
│ ... │ ...               │ ...    │
│ 202 │ forestille        │      1 │
│ 203 │ modparten         │      1 │
│ 204 │ sker              │      1 │
│ 205 │ rive              │      1 │
│ 206 │ konstrueret       │      1 │
│ 207 │ erstatning        │      1 │
│ 208 │ pøbel             │      1 │
│ 209 │ menuen            │      1 │
│ 210 │ opdager           │      1 │
│ 211 │ bekræfter         │      1 │
╰─────┴───────────────────┴────────╯


```

Så dataframes lever op til deres gode ry.
