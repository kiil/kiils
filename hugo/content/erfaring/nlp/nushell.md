+++
#draft = true
#genrer =
title = 'Simpel og hurtig ordfrekvensanalyse i Nushell'
skribenter = ['lennart-kiil']
date = 2022-11-08T09:47:02+01:00
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
#emner = ['']
#tools = ['']
+++

En shell der egner sig godt til dataanalyse, er [Nushell](https://www.nushell.sh/).

Den egner sig også godt til databaseret tekstanalyse, eller kvantitativ tekstanalyse.

Her et hurtigt eksempel på hvad Nushell kan.

Jeg har en tekst i filen `livsfarlige-konspirationsteorier.da.md`.

Antal linjer, ord og anslag i den tekst kan jeg få sådan her:


```
open livsfarlige-konspirationsteorier.da.md | size
```

så giver nushell svaret


```
╭───────────┬──────╮
│ lines     │ 51   │
│ words     │ 616  │
│ bytes     │ 3790 │
│ chars     │ 3713 │
│ graphemes │ 3713 │
╰───────────┴──────╯
```

Et hurtigt overblik over sætnings- og afsnitslængde fås som følger

```
open livsfarlige-konspirationsteorier.da.md | lines
```

```
╭────┬──────────────────────────────────────────────────────────────────────────────────────────────╮
│  0 │ Nekrolog for en konspirationsteoretiker - leger du også med ilden?                           │
│  1 │                                                                                              │
│  2 │ Det starter ofte uskyldigt.                                                                  │
│  3 │                                                                                              │

...

│ 46 │ Hvil i fred.                                                                                 │
│ 47 │                                                                                              │
│ 48 │                                                                                              │
│ 49 │                                                                                              │
│ 50 │                                                                                              │
╰────┴──────────────────────────────────────────────────────────────────────────────────────────────╯
```

Tokenisering af tekstfilen er så nemt som:


```
open livsfarlige-konspirationsteorier.da.md | split words
```

der giver

```
╭─────┬─────────────────────────╮
│   0 │ Nekrolog                │
│   1 │ for                     │
│   2 │ en                      │
│   3 │ konspirationsteoretiker │
│   4 │ leger                   │
│   5 │ du                      │
│   6 │ også                    │
│   7 │ med                     │
│   8 │ ilden                   │
│   9 │ Det                     │
│  10 │ starter                 │
```


Hyppigheden af hvert ord (ordfrekvensanalyse) findes ved:


```
open livsfarlige-konspirationsteorier.da.md | split words | uniq --count

```

der giver


```
╭─────┬─────────────────────────┬───────╮
│   # │          value          │ count │
├─────┼─────────────────────────┼───────┤
│   0 │ Nekrolog                │     1 │
│   1 │ for                     │     7 │
│   2 │ en                      │    20 │
│   3 │ konspirationsteoretiker │     1 │
│   4 │ leger                   │     1 │
│   5 │ du                      │    13 │

```

Og så sortere på den nye kolonne som hedder count:


```
open livsfarlige-konspirationsteorier.da.md | split words | uniq --count | sort-by count --reverse
```

der videre giver

```
╭─────┬─────────────────────────┬───────╮
│   # │          value          │ count │
├─────┼─────────────────────────┼───────┤
│   0 │ at                      │    21 │
│   1 │ en                      │    20 │
│   2 │ i                       │    19 │
│   3 │ som                     │    15 │
│   4 │ er                      │    15 │
│   5 │ og                      │    15 │
│   6 │ af                      │    14 │
│   7 │ du                      │    13 │
│   8 │ det                     │    10 │
│   9 │ dig                     │     9 │
│  10 │ ikke                    │     9 │
│  11 │ jeres                   │     8 │
│  12 │ med                     │     8 │
│  13 │ den                     │     7 │

```

Her er tydeligvis brug for at bortsortere stopwords. Men det skulle nok have været gjort inden vi begyndte at tælle antal og sortere på hyppigheden af dem.

Inden vi går tilbage, så lad os først tage en helt almindelig fil med et stopord på hver linje og lave den til en tabel i Nushell med kolonnenavn stopord.


```
open stopord.txt | lines | wrap stopord
```

giver

```
╭─────┬────────────╮
│   # │  stopord   │
├─────┼────────────┤
│   0 │ ad         │
│   1 │ af         │
│   2 │ aldrig     │
│   3 │ alene      │
│   4 │ alle       │
│   5 │ allerede   │
│   6 │ alligevel  │
│   7 │ alt        │
│   8 │ altid      │
...
```

Vi "gemmer" tabellen i en variabel:

```
let stopwords = ( open stopord.txt | lines | wrap stopord )
```

Hvis vi nu går tilbage til vores tekst on konspirationers farlighed og deler den op i ord også med kolonnenavn `ord`:

```
open livsfarlige-konspirationsteorier.da.md | split words | wrap ord
```

får vi

```
╭─────┬─────────────────────────╮
│   # │           ord           │
├─────┼─────────────────────────┤
│   0 │ Nekrolog                │
│   1 │ for                     │
│   2 │ en                      │
│   3 │ konspirationsteoretiker │
│   4 │ leger                   │
│   5 │ du                      │
│   6 │ også                    │
│   7 │ med                     │
│   8 │ ilden                   │
│   9 │ Det                     │
...
```

Den tabel skal nu have fjernet alle ord som også findes i tabellen over stopord.

Det kaldes teknisk set en "antijoin"

Desværre kan Nushell endnu ikke lave en rigtig antijoin på tabeller (men det kan den på dataframes og det vender jeg tilbage til i næste artikel om nushell).

Så i stedet gør vi sådan her:

```
open livsfarlige-konspirationsteorier.da.md | split words | wrap ord | where ord in $stopwords.stopord == false

```

og det giver så

```
╭─────┬─────────────────────────╮
│   # │           ord           │
├─────┼─────────────────────────┤
│   0 │ Nekrolog                │
│   1 │ konspirationsteoretiker │
│   2 │ leger                   │
│   3 │ ilden                   │
│   4 │ Det                     │
│   5 │ starter                 │
│   6 │ ofte                    │
│   7 │ uskyldigt               │
│   8 │ Du                      │
│   9 │ opdager                 │
│  10 │ mainstream              │
│  11 │ medierne                │
│  12 │ lyver                   │
...
```


Som man ser, er stopwords fjernet, men ikke dem som er skrevet med stort.

Så lad os "downcase" alle ord i teksten først med `str downcase` lige efter filnavnet:

```
open livsfarlige-konspirationsteorier.da.md | str downcase | split words | wrap ord | where ord in $stopwords.stopord == false
```

Det giver så

```
╭─────┬─────────────────────────╮
│   # │           ord           │
├─────┼─────────────────────────┤
│   0 │ nekrolog                │
│   1 │ konspirationsteoretiker │
│   2 │ leger                   │
│   3 │ ilden                   │
│   4 │ starter                 │
│   5 │ ofte                    │
│   6 │ uskyldigt               │
│   7 │ opdager                 │
│   8 │ mainstream              │
│   9 │ medierne                │
│  10 │ lyver                   │
│  11 │ lyver                   │
│  12 │ ligefrem                │
...
```



Lad os gemme den rensede og "downcasede" tekst som variablen `tidy`.

```
let tidy = ( open livsfarlige-konspirationsteorier.da.md | str downcase | split words | wrap ord | where ord in $stopwords.stopord == false )
```

Og hvis vi så tæller og sorterer igen

```
$tidy.ord | uniq --count | sort-by count --reverse
```

så får vi

```
╭─────┬─────────────────────────┬───────╮
│   # │          value          │ count │
├─────┼─────────────────────────┼───────┤
│   0 │ verden                  │     5 │
│   1 │ dag                     │     4 │
│   2 │ verdensopfattelse       │     4 │
│   3 │ mainstream              │     4 │
│   4 │ frelser                 │     3 │
│   5 │ hele                    │     3 │
│   6 │ alternative             │     3 │
│   7 │ begynder                │     3 │
│   8 │ magtfuld                │     2 │
│   9 │ pludselig               │     2 │
│  10 │ tager                   │     2 │
│  11 │ står                    │     2 │
│  12 │ tiden                   │     2 │

```

som giver en ide om hvad teksten handler om.

Desværre tager processen 

```
benchmark {                                                                                           11/08/2022 11:00:49 
::: let stopwords = ( open stopord.txt | lines | wrap stopord )
::: let tidy = ( open livsfarlige-konspirationsteorier.da.md | str downcase | split words | wrap ord | where ord in $stopwords.stopord == false )
::: $tidy.ord | uniq --count | sort-by count --reverse }

```
over en tiendedel af et sekund:

```
145ms 516µs 353ns
```

Næste gang ser jeg på om det kan gøres både mere elegant og hurtigere med dataframes i Nushell.
