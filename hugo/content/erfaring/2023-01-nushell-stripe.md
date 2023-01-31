---
title: 'Nushell og stripes API'

# summary bruges i snippets på interne oversigter
summary: 'Nushell gør det nemt at interagere med API'


# description bruges i og:description
description: 'Nushell gør det nemt at interagere med API'

toc: false

show_reading_time: true
skribenter:
  - lennart-kiil
date: '2023-01-31'
emner:
  - data
  - regnskab
  - bogføring
  - finanser
tools:
  - nushell
  - hledger
---

Nushell gør det nemt at interagere med data. Og nemt at hente oplysninger fra et API som leverer i json.

For eksempel ønsker jeg at finde de 10 seneste betalinger til Folkets Avis.

```
fetch https://api.stripe.com/v1/charges -u hemmeligkodeforfolketsavis | get data | select amount created | upsert created { get created | into datetime } | upsert amount { get amount | $in / 100 }
```

Og jeg får de oplysninger tilbage som jeg har brug for.

```
╭───┬─────────┬──────────────╮
│ # │ amount  │   created    │
├───┼─────────┼──────────────┤
│ 0 │      59 │ 2 hours ago  │
│ 1 │      59 │ 18 hours ago │
│ 2 │      62 │ 2 days ago   │
│ 3 │     699 │ 2 days ago   │
│ 4 │ 7498.75 │ 3 days ago   │
│ 5 │     400 │ 3 days ago   │
│ 6 │  569.47 │ 3 days ago   │
│ 7 │      59 │ 5 days ago   │
│ 8 │      29 │ 5 days ago   │
│ 9 │      62 │ a week ago   │
╰───┴─────────┴──────────────╯


```

Det kan nemt integreres med PTA såsom hledger, så det er nemt at automatisere bogføring.



## Bonus

En hurtig gennemgang af hvad one-lineren gør:

```
> : ( 
∙     fetch https://api.stripe.com/v1/charges -u topsecret | 
∙     get data | 
∙     select amount created | 
∙     upsert created { get created | into datetime } | 
∙     upsert amount { get amount | $in / 100 }
∙   )

```

`fetch` fungerer her som `curl` og kommunikerer med stripes API.

`get data` henter tabellen 'data' i det svar som kommer tilbage fra stripe.

`select amount created` tager søjlerne 'amount' og 'created' fra tabellen.

Resten er transformationer som gør det lettere at forhold sig til data.

For eksempel tager `{ get created | into datetime }` og forvandler et unix datestamp til et for mennesker mere letlæseligt datetime format. 
