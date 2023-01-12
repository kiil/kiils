+++
#draft = true
#genrer = ['howto']
title = 'Går det bedre for chatGPT med ordfrekvensanalyse på engelsk end det gjorde på dansk?'
skribenter = ['lennart-kiil']
date = 2023-01-11
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

Da jeg bad chatGPT udføre en frekvensanalyse på en dansk tekst talte den ordene to gange:

[Kan chatGPT bruges til kvantitativ tekstanalyse?](https://www.kiils.dk/erfaring/nlp/chatgpt-ordfrekvensanalyse/)

måske fordi den oversætter frem og tilbage mellem dansk og engelsk? Bare et gæt.

Men lad os så prøve på engelsk.


Jeg bad chatGPT oversætte en del af den tekst, som jeg tidligere fik chatGPT til at udføre en ordfrekvensanalyse på, til engelsk.

Og derefter bad jeg den give mig de mest brugte ord i teksten.

Det gik bedre på engelsk:

```
In the whole text that you provided, the most used words (excluding stopwords such as "the", "and", "or", etc.) are:

mainstream (2 times)
media (2 times)
you (2 times)
Maybe (2 times)
pharmaceutical (1 time)
industry (1 time)
creates (1 time)
artificial (1 time)
demand (1 time)
alternatives (1 time)

Please note that this is a word frequency analysis of a fictional obituary written as a conspiracy theorist, and not a factual text.

```

Jeg vil nok mene at 'you' er et stopord, men chatGPT fik i hvert fald talt rigtigt i denne ombæring, og ikke doblet op som den gjorde på dansk.

Den effektive måde at lave ordfrekvensanalyse er dog stadig med værktøjer som er skabt til dette - eller med nushell som jeg viste tidligere:

[Uhyre hurtig tekstanalyse med dataframes i Nushell](https://www.kiils.dk/erfaring/nlp/nushell-dataframes/)


