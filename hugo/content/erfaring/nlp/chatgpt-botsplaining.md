+++
#draft = true
#genrer = ['howto']
title = 'chatGPT mansplainer ikke - men her botsplainer den helt vildt'
skribenter = ['lennart-kiil']
date = 2023-01-12
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

chatGPT er stærk på engelsk og den skammer sig ikke over at de "mentale muskler" frem.

Jeg giver chatGPT en simpel opgave. Et ganske kort prompt:

> help me POS tag the following sentence: I went up the road

Og får en lang smøre retur:

```
Part-of-speech (POS) tagging is the process of marking each word in a sentence with its corresponding POS tag. There are many POS taggers available, both for general English and for specific languages.

For your sentence "I went up the road.", the POS tags would be as follows:

    I: personal pronoun
    went: past tense of the verb "go"
    up: adverb
    the: definite article
    road: noun

Here is how you could POS tag the sentence using the Natural Language Toolkit (NLTK) library in Python:

import nltk

sentence = "I went up the road."

# Tokenize the sentence into words
words = nltk.word_tokenize(sentence)

# POS tag the words
tagged_words = nltk.pos_tag(words)

print(tagged_words)

Output:

[('I', 'PRP'), ('went', 'VBD'), ('up', 'RP'), ('the', 'DT'), ('road', 'NN')]

In this example, the NLTK library's built-in POS tagger is used, which is based on the Penn Treebank POS tags. The tagger returns a list of tuples, where each tuple contains a word and its corresponding POS tag.

Note that the POS tagging is not always 100% accurate, especially for more complex sentences and for domain specific text.


```

Jeg vidste nu godt det meste i forvejen. Ellers ville jeg næppe have brugt forkortelsen POS. Men det er fint nok at chatGPT giver mig en del ekstra og til dels overflødig information, da den jo samtidig svarer på mit spørgsmål og faktisk også indirekte fortæller mig at der er mere effektive måder at lave POS-analyse på.


Jeg plejer nu at bruge spacy og ikke NLTK, så jeg skriver tilbage til chatGPT:


> could you do the same in spacy

```
Yes, you can also use the spaCy library to POS tag a sentence. Here's an example of how you could POS tag the sentence "I went up the road." using spaCy:

Copy code
import spacy

# Load the 'en_core_web_sm' model
nlp = spacy.load("en_core_web_sm")

sentence = "I went up the road."

# Process the sentence with the loaded model
doc = nlp(sentence)

# Iterate over the tokens in the processed sentence
for token in doc:
    # Print the token text and its POS tag
    print(token.text, token.pos_)
This will output:

Copy code
I PRON
went VERB
up ADP
the DET
road NOUN
. PUNCT
spaCy uses its own POS tag scheme, which is slightly different from the Penn Treebank tags used by NLTK. In this case spaCy uses the POS tags that include PRON, VERB, ADP, DET and NOUN

In general spaCy have a more robust architecture than NLTK and its language processing capabilities are faster.


```

OK. chatGPT, men lidt underligt at du så fortalte mig om NLTK og ikke spaCy i første omgang. Oh, well. Det viser bare at det altid er en fordel at vide noget om et emne inden man begynder at tale med chatGPT om det.

Men hvad med på dansk?

På dansk skal det skæres lidt mere ud i pap:


> kan du sætte kryds og bolle i den her sætning: manden tog sin bil og kørte i havne

**chatGPT** Manden tog sin bil og kørte i havnen.

Så den gentager bare min sætning.


Lennart Kiil: men kan du sætte kryds og bolle i den sætning


**chatGPT:** Det kan jeg desværre ikke, da "kryds og bolle" ikke er en grammatisk term, og jeg derfor ikke ved, hvad det betyder i denne sammenhæng. Kan du give mere information eller en anden forklaring, så jeg bedre kan forstå hvad du beder om ?



Lennart Kiil: lav en POS-analyse på sætningen

Og så er chatGPT på hjemmebane igen:


**chatGPT:** En POS-analyse (Part-of-Speech analysis) er en proces, hvor man tager en sætning og markerer hvert ord i sætningen med en grammatisk kategori, såsom substantivet, verbet, adjektivet osv. Her er en POS-analyse af sætningen "manden tog sin bil og kørte i havnen":

```
manden - substantivet (noun)
tog - verbet (verb)
sin - possessivt pronomen (possessive pronoun)
bil - substantivet (noun)
og - konjunktion (conjunction)
kørte - verbet (verb)
i - præposition (preposition)
havnen - substantivet (noun)
Bemærk at der kan være andre måder at analysere de grammatiske kategorier på, men det er i det store og hele den mest populære grammatiske kategori at de fleste ord passer i.
```

Ikke dårligt.

Og jeg gætter på at chatGPT og lignende værktøjer vil blive brugt en del til den slags opgaver selvom værktøjer som spaCy klarer dem meget mere effektivt.

Der er noget nemt ved bare at skrive direkte i menneskesprog og bede om at få løst en opgave. Og der er chatGPT meget tæt på at være. Men der mangler lidt.


