---
title: FOLKETS meget hurtigere efter drop af bannere
description: "Nu er der data nok til at konkludere noget mere håndfast."
summary: "Nu er der data nok til at konkludere noget mere håndfast."
date: 2019-06-07
draft: true

show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

keywords:
  - frontend
  - folkets
  - ydelse
  - google-analytics

emner:
  - ydelse

tools:
  - google-analytics

cases:
  - folkets

cm:
  - feed



---



```
<?php 
$elements = drupal_get_form("user_login"); 
$form = drupal_render($elements);
echo $form;
?>
```
```

if (!user_is_logged_in()) {
$elements = drupal_get_form('user_register_form'); 
$form = drupal_render($elements);
echo $form;
}
```
