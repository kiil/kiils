+++
#draft = true
#genrer =
title = 'Nushell-Etc'
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

open livsfarlige-konspirationsteorier.da.md | lines -s 

╭───┬────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ 0 │ Nekrolog for en konspirationsteoretiker - leger du også med ilden?                                         │
│ 1 │ Det starter ofte uskyldigt.                                                                                │
│ 2 │ Du opdager at mainstream medierne lyver. Eller måske lyver de ikke ligefrem. Men de manipulerer, mener du. │
│ 3 │ De udelader nogle ting fra deres historier og betoner i mistænkelig grad andre.                            │
│ 4 │ Og ved du hvad - du har ret!                                                                               │
...




Der

    open livsfarlige-konspirationsteorier.da.md | lines -s | into df | str-lengths | describe


╭─────┬─────╮
│   # │  0  │
├─────┼─────┤
│   0 │  67 │
│   1 │  27 │
│   2 │ 107 │
│   3 │  80 │
│   4 │  28 │
│   5 │ 136 │
│   6 │ 172 │
│   7 │ 306 │
│   8 │ 192 │
│   9 │ 142 │
│ ... │ ... │
│  14 │ 198 │
│  15 │ 202 │
│  16 │ 145 │
│  17 │ 311 │
│  18 │ 299 │
│  19 │ 254 │
│  20 │ 197 │
│  21 │ 188 │
│  22 │ 230 │
│  23 │  12 │
╰─────┴─────╯

    open livsfarlige-konspirationsteorier.da.md | lines -s | into df | str-lengths | describe


╭───┬────────────┬─────────╮
│ # │ descriptor │ 0 (u32) │
├───┼────────────┼─────────┤
│ 0 │ count      │   24.00 │
│ 1 │ sum        │ 3739.00 │
│ 2 │ mean       │  155.79 │
│ 3 │ median     │  151.50 │
│ 4 │ std        │   86.80 │
│ 5 │ min        │   12.00 │
│ 6 │ 25%        │  102.00 │
│ 7 │ 50%        │  158.00 │
│ 8 │ 75%        │  202.00 │
│ 9 │ max        │  311.00 │
╰───┴────────────┴─────────╯
