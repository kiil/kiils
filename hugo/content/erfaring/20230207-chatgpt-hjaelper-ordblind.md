+++
#draft = true
#genrer =
title = 'Chatgpt hjælper ordblind - eller gør den?'
skribenter = ['lennart-kiil']
date = 2023-02-07T10:41:04+01:00
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
tools = ['chatGPT']
+++

Der er lang vej endnu før chatGPT kan hjælpe ordblinde ordentligt.

Jeg startede med et ret langt afsnit som jeg bad chatGPT rette stavefejl i:

> Andrew Tate er et symptom på det som er udfordring i vores samfund, når det handler om mænd og de udfordringer de står over. Så kan vi vælge at overser dem eller være ligeglad og henvise til at mænd altid har haft det nemmere fordi det er den må vi se på vores historie. Det er rigtig at nogle får mænd har haft et privilegium, men gruppe som helhed har nok ikke været særlig heldig stillet. Det glæder i almindelighed mennesker hvem end man anser sig selv for at være. For spørgsmål der ofte dukker op hos mig er, hvis vi som samfund ikke lytter til de udfordringsmænd mænd har. Mænd halter i skolen, falder ud af uddannelsessystem, klar sig general dårlig i samfundet end de har gjort før. Kan ende som misbruger, hjemløs mm.

Det klarede chatGPT fint.

Så 'lytter til de udfordringsmænd mænd har' blev til 'lytter til de udfordringer mænd har'.

Men chatGPT skulle bruge et minut for at løse en så simpel opgave. Et menneske ville have løst den på få sekunder.

Nu tager jeg den udgave som er rettet for stavefejl, og beder chatGPT rette grammatiske fejl.

Men den ændrer intet i teksten.

Jeg prøver så at dele teksten op i mindre bidder, og giver den igen besked om at rette grammatiske fejl:

> Mænd halter i skolen, falder ud af uddannelsessystem, klar sig general dårlig i samfundet end de har gjort før. Kan ende som misbruger, hjemløs mm.

Det får den rettet til
 
> Mænd halter i skolen, falder ud af uddannelsessystemet, klarer sig generelt dårligere i samfundet end de har gjort før. Kan ende som misbruger, hjemløs mm.

I det mindste får den ændret 'klar sig general' til 'klarer sig generelt'.

Men hvad med 'misbruger og hjemløs', skulle de ikke have været i flertal?

Ud fra sætningen de står i, er det ikke klart. Men ud fra afsnittet er det. chatGPT er en transformer model, og som sådan kan den tage højde for sammenhæng, men åbenbart ikke en stor nok sammenhæng i dette tilfælde.

Og hvad med 'Mænd halter i skolen'? Det er strengt taget ikke en grammatisk fejl, men en "betydningsfejl".

Lad os prøve at bede chatGPT rette betydningsfejl.

Det bliver til:

Mænd halter i skolen, falder ud af uddannelsessystemet, klarer sig generelt dårligere i samfundet end de har gjort før. Kan ende som misbruger, hjemløs m.m.

Desværre "retter" den kun 'mm.' til 'm.m.', ikke ligefrem det mest væsentlige.

Trods ivrige forsøg får jeg ikke chatGPT til at omskrive 'Mænd halter i skolen' til 'Mænd halter efter i skolen' som temmelig sikkert er den tilsigtede figurative betydning.

Igen formår chatGPT ikke at tage højde for nok sammenhæng til at vælge det "rigtige" næste ord, som jo er målet for chatGPT.

Sandsynligvis ville man kunne opnå et bedre resultat ved at bruge chatGPT generative evner, men det skaber et nyt problem. For så er det ikke længere den ordblindes egen tekst som bliver slutresultatet.

Alt i alt er chatGPT i hvert fald på dansk temmelig langt fra at kunne hjælpe en ordblind med at rette en tekst som allerede er skrevet.
