---
title: "Quick ratio"
draft: true
date: '2019-05-24'
katex: true
toc: true
show_reading_time: true
keywords:
  - abonnement
  - folkets

cases:
  - folkets
emner:
  - Abonnementsmodellen
---


The SaaS Quick Ratio is calculated by dividing MRR added by MRR lost.

$
A   = \frac{New MRR + Expansion MRR}{Churned MRR + Contraction MRR}
$


https://www.slideshare.net/03133938319/saastr

Guideline (per Social Capital’s Mamoon Hamid)
SaaS Quick Ratio < 1: You’re dead. You could sustain a Quick Ratio of less than 1 for a month or two if you already have a good customer base, but anything longer and your churn is going to kill your company.

1 < Quick Ratio < 4: You’re growing, and the growth might look good, but you are making it more difficult for yourself as you must constantly keep up high levels of customer acquisition to replace lost bookings. You will grow, but slowly, and less efficiently.

Quick Ratio > 4: You’re growing at a good rate, and doing it efficiently. Hamid won’t invest in a SaaS company with a Quick Ratio below 4. This means that a SaaS company must be adding $4 of revenue for every $1 it’s losing for investors to even start looking favorably upon it.

Let’s look at a few scenarios of how that company got its $10,000 in MRR growth and what the Quick Ratio would be.

Scenario A
$12,000 (New + Expansion) / $2,000 (Contraction + Churn) = Quick Ratio of 6

Scenario B
$15,000 (New + Expansion) / $5,000 (Contraction + Churn) = Quick Ratio of 3

Scenario C
$20,000 (New + Expansion) / $10,000 (Contraction + Churn) = Quick Ratio of 2

Scenario D
$50,000 (New + Expansion) / $40,000 (Contraction + Churn) = Quick Ratio of 1.25


New MRR — MRR from new customers
Expansion MRR — MRR from existing customers (upgrades)
Contraction MRR — Lost MRR from existing customers (downgrades)
Churned MRR — Lost MRR from canceled customers

Early stage companies with a ratio of 4 or higher are considered healthy. This will become more difficult to maintain with growth. However, at a SaaS Quick Ratio of 2, you are loosing half of your new MRR every month.

It’s no secret that maintaining low churn is key to the success of a SaaS business. It’s key to a strong SaaS Quick Ratio as well. On their own, forward-looking metrics like MRR and customer acquisition all suggest promising growth. But upon deeper investigation, those metrics aren’t able to mask a revenue-draining high MRR churn rate. As a result, a low SaaS Quick Ratio exposes the unhealthy side of even the most impressive MRR growth.

A low Quick Ratio (low revenue expansion in relation to revenue loss) suggests the company’s new revenue is not driving the business forward. Rather, it’s merely replenishing the revenue lost through cancellation and contraction. Over time, more and more effort must be poured into New + Expansion MRR just to compensate for churn. Something, be it the product or customer success efforts, needs tuning before investors will commit.

A high Quick Ratio (low revenue loss, high revenue expansion) confirms the company’s growth rate is both high and stable. The product is successful, the customers are happy, and there is a good framework in place for the business to scale efficiently. Revenue will continue growing at an attractive, predictable rate. Ding, ding, ding!


Sandsynligvis ikke. Men læs alligevel videre og få et simpelt værktøj til at vurdere dine chancer.


Abonnementsmodellen for indhold er gammelkendt og har vist sit værd gennem tiden for magasiner og aviser.

Og i dag har andre leverandører af indhold, for eksempel Netflix, stor succes med modellen. Også privatpersoner, som skaber indhold af forskellig art, har med hjælp fra services som Patroen haft glæde af modellen - nok oftest som supplement til anden indtægt.

Selv har jeg erfaring med modellen fra det medie jeg har stiftet og opbygget: [Folkets Avis](https://www.folkets.dk).

Jeg kan nu leve af Folkets Avis. Det er en lille sejr i sig selv og forhåbentligt første skridt på vej mod flere succeser.

Men hvad med dig?

Mange vil gerne starte et medie op eller på anden vis leve at at skabe indhold og sælge det online på et site man selv er ejer af.

## Hvor meget skal der til?

Inden man går i gang kan man med fordel gøre sig nogle overvejelser om hvad der skal til.

Det handler om

1. at få nogle læsere ind på sin side
2. og sælge abonnementer til dem

Vi kan nu se nærmere på hvor mange læsere der skal til, hvor god man skal være til at overbevise dem om at købe et abonnement, og hvor dygtig man skal være til at fastholde sine kunder, når man først har fået dem ind som abonnenter.

Hver solgt abonnement er en "vundet" abonnent. Las os kalde antallet af vundne abonnenter for V<sub>a</sub>.

Det antal abonnenter, som kan vindes inden for en given periode, er givet ved antal læsere, noteret som L, og den _andel_ af læsere man får solgt et abonnement til. Denne andel kalder vi konverteringraten, noteret som K.

For en given periode er tilvæksten i antal abonnenter således givet ved:

$
V_a = L \cdot K
$

Hvis der ikke er noget frafald så er det samlede antal abonnenter, noteret A, ganske enkelt lig antallet af abonnenter vundet over tid, altså V<sub>a</sub>.

Men sådan er virkeligheden ikke. Abonnenter falder hele tiden fra og tabes konstant af mange forskellige årsager.

Det antal abonnenter, som tabes over en given periode, kan vil kalde T<sub>a</sub> for tabte abonnenter. Det kan udregnes som produktet af det samlede antal abonnenter, A,  og den andel af disse abonnenter som tabes inden for en given periode. Denne andel kalder vi frafaldsraten, F.

$
T_a = A \cdot F
$


Givet et nogenlunde stabilt læsertal og stabile konverterings- og frafaldsrater, så vil mediet på et tidspunkt nå et plateau, eller et **vækstloft** om man vil, hvor antal af  løbende vundne abonnenter er lig med antallet af løbende tabte abonnenter – og det samlede antal abonnenter vil da stagnere. En ligevægt er på plads:

$
T_a = V_a
$

Hvis vi i stedet indsætter komponenterne for T<sub>a</sub> og V<sub>a</sub>, får vi:

$
A \cdot F = L \cdot K
$

Det antal abonnenter, du vil kunne opnå med et givet antal læsere og en fastlagt konverterings- og frafaldsrate, kan altså forudsiges ud fra denne simple formel:

$
A   = \frac{L \cdot K}{F }
$

Lad os tage et konkret eksempel med 100.000 månedlige læsere, en månedlig konverteringsrate på en halv promille og en månedlig frafaldsrate på fem procent.

$
A = \frac{100000 \cdot 0{,}0005}{0{,}05} = 1000
$

Altså kan du under de forudsætninger ikke forvente mere end maksimalt 1000 abonnenter.

## Få læsere - få abonnenter

Hvis du i stedet kun har 10.000 læsere rammes vækstloftet allerede ved 100 opnåede abonnenter og så fremdeles.

Hvis dit medie er mere specialiseret, kan du måske øge konverteringsraten og sænke frafaldsraten, men så er det til gengæld også sværere at opnå det store antal læsere.

Og husk på: Med tiden vil et større antal af læserne allerede være abonnenter og kan således ikke vindes. Og i takt med at antallet af abonnenter stiger vil det samlede antal abonnenter, der tabes, gøre det samme.

Din vækst vil med andre ord flade asymptotisk ud, når antallet af abonnenter nærmer sig vækstloftet. Og så vil antallet ellers forblive omkring vækstloftet, med mindre du kan ændre markant på nogle af de nævnte faktorer.

Du vil altså med stor sandsyblighed opleve at det bliver svært at opretholde vækst.

Og du vil med næsten usvigelig sikkerhed ramme loftet. Og man kan nå dertil overraskende hurtigt.

Kan du leve af for eksempel 500 abonnenter - eller af 1000?

Det kommer vel dels an på, hvor meget hver især betaler om måneden. Men prisen på abonnementet påvirker også antallet af abonnementer som kan sælges og dermed antallet af abonnenter som kan vindes og fastholdes.

Det vender vil tilbage til.
