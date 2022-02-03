---
title: 'Mit første computer-program nogensinde - kan du gennemskue hvad det gør?'

# summary bruges i snippets på interne oversigter
summary: ' '

# description bruges i og-description
description: 'Jeg tror ikke man behøver være programmør for at gennemskue koden'


# featured_image bruger jeg ikke, bruger i stedet picture element med skråstreg i indhold
# featured_image: ' '


# thumbnail er også til og-image og skrives uden indledende skråstreg
thumbnail: ' '

# toc sættes ved længere tekster med mellemrubrikker til true
toc: false

show_reading_time: true
skribenter:
  - lennart-kiil
date: '2022-02-03'
emner:
  - Programmering
  - Venlig digitalisering
tools:
  - Vim
  - Fish
  - dateutils
---

Jeg har beskæftiget mig meget med sprog. Taler også flere af dem ganske godt — har jeg fået at vide ;)

Og så er det naturligvis sproget jeg bruger til at formidle budskaber, ideer og viden. Også i mit professionelle virke.

Ovenikøbet har jeg specialiseret mig i at formidle digitalt. Og her bruger man typisk sproget lidt anderledes end man gør i de mere klassiske udgivelser som bøger og trykte artikler.

Når man tænker over det, er det egentligt utroligt at jeg aldrig har lært et programmeringssprog!

 

Det her jeg stadig ikke, vil nogen med rimelighed anføre når de ser mit "program" herunder. Men jeg har snuset lidt til emnet og bygget en lille funktion op i et "script".

Det er et lille "program" der hjælper mig med at gøre børnenes liv bedre. Jeg tror ikke man behøver være programmør for at gennemskue koden:


```
function D
        read -p 'echo "A sover:"' -l asover
        read -p 'echo "A vågner:"' -l avaagner
        read -p 'echo "A humør:"' -l ahumor
        read -p 'echo "O sover:"' -l osover
        read -p 'echo "O vågner:"' -l ovaagner
        read -p 'echo "O humør:"' -l ohumor
        set -l ak (datediff  2022-01-01T(echo $asover) 2022-01-02T(echo $avaagner) -f '%0H:%0M')
        set -l ok (datediff  2022-01-01T(echo $osover) 2022-01-02T(echo $ovaagner) -f '%0H:%0M')
        echo (date "+%Y-%m-%d"), $ak, $ahumor, $ok, $ohumor >> sovn.txt
end
```

Kan du gennemskue hvad programmet gør?

Først forsøgte jeg selv at udregne tidsperioden, men det var besværligt af mange forskellige årsager.

Heldigvis kunne jeg installere et lille værktøj `datediff` fra pakken `dateutils`. Det gjorde jeg sådan her på macOS

```
brew install dateutils
```

"Programmet" er skrevet i Fish som er en shell ligesom sh, bash eller zsh.

Men vigtigst af alt, så har programmet gjort det lettere for mig at sikre at børnene får deres søvn.

Og hvis ikke digitaliseringen gør vores liv bedre, hvad skal vi så bruge den til?


---

PS. Det med at sætte en fast dato ind i `datediff`-kommandoen virkede som den letteste måde at løse problemet med at få en tidsperiode hen over et døgnskifte ud i positive tal på.

Det kan nok gøres mere elegant. Men min løsning virker faktisk helt fint.


