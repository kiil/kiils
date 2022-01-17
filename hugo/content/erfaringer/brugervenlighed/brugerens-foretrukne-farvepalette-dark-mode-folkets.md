---
title: 'Sådan satte jeg et "dark theme" op på Folkets uden at genere brugerne med flere valgmuligheder'
summary: 'Det er muligt at efterkomme brugernes ønsker uden at genere dem med yderligere forespørgsler'
#featured_image: '/erfaringer/brugervenlighed/darkmode.png'
description: 'Giv brugerne hvad de vil have uden at forstyrre'
thumbnail: 'erfaringer/brugervenlighed/darkmode.png'
toc: false
show_reading_time: true
skribenter:
  - lennart-kiil
date: '2022-01-17'
toc: false
emner:
  - Brugervenlighed
tools:
  - Drupal, Bootstrap
cases:
  - Folkets
---


I dag er der mange ting en bruger skal tage stilling til når han eller hun surfer ind på en hjemmeside.

Vil man nu have cookies?

Hvilke cookies vil man have?

Vil man tilmeldes nyhedsbrev?

Eller vil man have notifikationer?

Nogle har også en chatbot som begynder at stille brugeren spørgsmål.

Det sidste brugere har behov for er endnu en detalje at tage stilling til!

Derfor var det vigtigt for mig at jeg kunne give brugerne af Folkets.dk mulighed for at vælge et mørkt tema, men uden at skulle spørge dem.

Muligheden er der takket være to css media queries som hedder henholdsvis

```
@media (prefers-color-scheme: dark) {
}
```

og

```
@media (prefers-color-scheme: light) {
}
```

På den måde kunne jeg på simpel maner efterkomme brugerens ønske.

Brugeren behøver kun at foretage valget een gang i sit operativ-system. Så gælder det automatisk på sites som er sat op til det. Nu også Folkets.

Du kan læse mere om mulighederne her

> The prefers-color-scheme CSS media feature is used to detect if the user has requested a light or dark color theme.

> The user might indicate this preference through an operating system setting (e.g. light or dark mode) or a user agent setting.

 — [prefers-color-scheme - CSS: Cascading Style Sheets | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme)
 
 
 Hvordan ser dark mode så ud på Folkets?
 
 Omtrent sådan her:
 
{{< figure src="/erfaringer/brugervenlighed/darkmode.png" title="Dark mode på Folkets" >}}
