+++
draft = true
#genrer =
title = 'Nushell-Dataframes'
skribenter = ['lennart-kiil']
date = 2022-11-08T11:07:36+01:00
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


```
benchmark { words livsfarlige-konspirationsteorier.da.md }

```


```
3ms 149µs 424ns
```

Tre tusindedele af et sekund. Det er fair nok.
