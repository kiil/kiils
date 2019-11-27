---
title: Sådan fik jeg perfekte 100 i mobilhastighed
description: "Det er ikke nemt i et CMS"
summary: "Det er ikke nemt i et CMS"
date: 2019-06-11
# draft: true

show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

keywords:
  - ydelse
  - frontend

emner:
  - ydelse
  - frontend

tools:
  - bootstrap-4
  - tachyons
  - pantheon
  - drupal-8

cases:
  - klimaleksikon

cm:
  - feed


thumbnail: "erfaringer/frontend/100.png"
---
Med en static site generator er det efterhånden relativt nemt at bygge et site som er optimeret på ydelse.

Men hvis nu man skal bygge noget mere kompliceret hvor man har brug for et CMS. Hvad så? Kan man stadig komme helt i top med performance i frontend med et CMS?

Ja! Heldigvis da.

Klimaleksikon, Danmarks bedste sted at blive klog på [klima](https://klimaleksikon.dk/), er bygget med Drupal 8. Tidligere brugte jeg Bootstrap 4 i frontend. Nu har jeg skiftet til Tachyons.

Sitet er hosted på Pantheon. Og de arbejder sammen med Fastly omkring CDN.

Allerede med Bootstrap 4 klarede Klimaleksikon sig flot i Chromes test for ydelse i mobil. Med resultater i de helt høje 90'ere.

Men jeg udskiftede Bootstrap 4 med Tachyons. Og nu er det lykkedes mig at få det bedst mulige resultat på 100 i mobil-testen.

![](/erfaringer/frontend/100.png)

Og resultatet er vel at mærke opnået med den hårde indstilling: "Applied Fast 3G, 4x CPU Slowdown"

Det skal siges at det er på sider uden billeder. På sider med billeder, som for eksempel forsiden, får jeg "kun" 99 som resultat.

Men alt i alt yderst tilfredstillende resultater. Som du naturligvis selv kan efterprøve hvis du har Chrome som browser.

Konklusion:

Kombinationen Pantheon, Drupal 8 og Tachyons kan bestemt anbefales hvis du vil have et hurtigt site.
