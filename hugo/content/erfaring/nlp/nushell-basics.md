+++
draft = true
#genrer =
title = 'Grundlæggende nushell'
skribenter = ['lennart-kiil']
date = 2022-11-12T19:45:38+01:00
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


## Records

records er key value pairs

og skrive i tuborg på højkant

`{key: value}`

flere records adskilles med komma eller bare mellemrum

`{key: value, key1: value1}` eller `{key: value key1: value1}`

Bedst at undgå både nøgler og værdier med mellem rum, men om nødve nødvendigt:

`{'key 0': 'value 0' key1: value1}`

Generelt er value et tal eller en kategori.

til tabel

`transpose`


## Lister

lister er ordnede sekvenser af dataværdier og skrives i kantede parenteser med eller uden komma.

`[Alexander Olivia]` eller `[Alexander, Olivia]`

værdier med mellemrum pakkes med apostrof

`['Alexander Kiil' 'Olivia Kiil']`


til tabel

`wrap`


## Tabeller

Tabeller er en liste med records

[{navn: Alexander} {navn: Olivia}] records i listen adskilles med mellemrum eller komma.

```
╭───┬───────────╮
│ # │   navn    │
├───┼───────────┤
│ 0 │ Alexander │
│ 1 │ Olivia    │
╰───┴───────────╯
```



## Dataframes

En glroficeret tabel i ram

> For this reason, the DataFrame structure was introduced to Nushell. A DataFrame stores its data in a columnar format using as its base the Apache Arrow specification, and uses Polars as the motor for performing extremely fast columnar operations.


[{navn: Alexander}, {navn: Olivia}] | into df




[{navn: Alexander alder: 10}, {navn: Olivia alder: 8}] | into df

╭───┬───────────┬───────╮
│ # │   navn    │ alder │
├───┼───────────┼───────┤
│ 0 │ Alexander │    10 │
│ 1 │ Olivia    │     8 │
╰───┴───────────┴───────╯


[{navn: Alexander alder: 10}, {navn: Olivia alder: 8}] | into df | sum

╭───┬──────┬───────╮
│ # │ navn │ alder │
├───┼──────┼───────┤
│ 0 │      │    18 │
╰───┴──────┴───────╯


[{navn: Alexander alder: 10}, {navn: Olivia alder: 8}] | into df | describe 


╭───┬────────────┬────────────┬─────────────╮
│ # │ descriptor │ navn (str) │ alder (i64) │
├───┼────────────┼────────────┼─────────────┤
│ 0 │ count      │       2.00 │        2.00 │
│ 1 │ sum        │            │       18.00 │
│ 2 │ mean       │            │        9.00 │
│ 3 │ median     │            │        9.00 │
│ 4 │ std        │            │        1.41 │
│ 5 │ min        │            │        8.00 │
│ 6 │ 25%        │            │        8.00 │
│ 7 │ 50%        │            │       10.00 │
│ 8 │ 75%        │            │       10.00 │
│ 9 │ max        │            │       10.00 │
╰───┴────────────┴────────────┴─────────────╯
