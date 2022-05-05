---
title: 'vim cheat sheet'
show_reading_time: true
skribenter:
  - lennart-kiil
date: '2020-09-21'

toc: true

emner:
  - Indholdshåndtering

tools:
  - Vim

draft: true
---

FZF syntax
Let's go over syntax so we can search more efficiently. Fortunately for us, there aren't many to learn.

^ is a prefix exact match. To search for phrase starting with "welcome", we do ^welcome.
$ is a suffix exact match. To search for phrase ending with "my friends", we do friends$.
' is an exact match. To search for phrase "welcome my friends", we do 'welcome my friends.
| is an "or" match. To search for either "friends" or "foes", we can use friends | foes.
! is an inverse match. To search for phrase containing "welcome" and not "friends", we can use welcome !friends
We can mix and match the above. For example, ^hello | ^welcome friends$ searches for phrase starting with either "welcome" or "hello" and ending with "friends".

https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko
