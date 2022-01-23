---
title: 'Med ny dark mode er klimaleksikon både mere bruger- og klimavenlig'

# summary bruges i snippets på interne oversigter
summary: ' '

# description bruges i og-description
description: 'Nogle gange kan man blæse med mel i munden'


# featured_image bruger jeg ikke, bruger i stedet picture element med skråstreg i indhold
# featured_image: ' '


# thumbnail er også til og-image og skrives uden indledende skråstreg
thumbnail: erfaringer/klimavenlig-og-brugervenlig/venlig-dm.png

# toc sættes ved længere tekster med mellemrubrikker til true
toc: false

show_reading_time: true
skribenter:
  - lennart-kiil
date: '2022-01-21'
emner:
  - Indholdshåndtering
tools:
  - css
cases:
  - klimaleksikon
---

Tekst

{{< figure src="/venlig-dm.png" title="Dark mode på Klimaleksikon" >}}



{{ with .Resources.ByType "image" }}
{{ range . }}
{{ .RelPermalink }}
{{ end }}
{{ end }}
