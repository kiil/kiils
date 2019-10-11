---
title: jQuery - væk med paranteser i tekst
description: "Ikke helt nemt"
summary: "Ikke helt nemt"
date: 2019-08-08
# draft: true

show_reading_time: true

# toc: true
# katex: true

skribenter:
  - lennart-kiil

keywords:
  -

brands:
  -

emner:

tools:
  -

cases:
  -

kunder:
  - per-asmussen


# thumbnail: ""
---


```javascript
<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous">
</script>

<script type="text/javascript">

function stripParenthesis( node ) {
    if(node.length) {
        node.contents().each(function(index, child) {
            if( child.nodeType === 3 ) {
                child.nodeValue = child.nodeValue.replace(/\(|\)/g, '');
            }
            else {
                stripParenthesis( $(child) );
            }
        });
    }
}

jQuery(document).ready(function($) {

stripParenthesis( $('a:contains("Opskriftsgruppe")').closest( "span" ) );

$('a:contains("Opskriftsgruppe")').css('display', 'none');

$('a:contains("Opskriftsgruppe")').closest( "span" ).css({ "font-size": "21px", "line-height": "3" });

});

</script>
```
