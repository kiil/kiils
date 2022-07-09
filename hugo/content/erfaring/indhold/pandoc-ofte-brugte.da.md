---
title: "Pandoc er et godt værktøj når man arbejder med indhold  i  forskellige formater"
description: ""
summary: "Interessen for klima er stor - er villigheden til at betale for viden på området det også?"
date: 2019-10-03

draft: true

thumbnail: "erfaring/fundraising/klimaleksikon-crowdfunding.png"
show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

keywords:
  - pandoc
  - indhold
  - formater
  - dokument

emner:
  - guide
  - tips
  - tricks
  - how-to
  - formater
  - dokumenter

tools:
  - pandoc

cases:
  - klimaleksikon



---

```

pandoc -r html klima.html -o klima.md -t commonmark --wrap=none

```



Hvis man kan nøjes med et selve den html som er mellem body og heller ikke behøver en toc:

```

pandoc klima.md -o klima.html

```

Hvis man  gerne vil have toc med er at fragmet desværre ikke nok ud der skal laves en hel html-side:

```

pandoc -s --toc klima.md -o klima.html

```
Så kan  man bagefter kopiere den del som er mellem body-tags i dokementet.
