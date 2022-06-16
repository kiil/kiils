+++
#draft = true
#genrer =
title = 'Udeluk bestemte indholdstyper fra søgeindeks i Hugo'
skribenter = ['lennart-kiil']
date = 2022-06-16T12:10:31+02:00
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
emner = ['indholdshåndtering']
tools = ['hugo']
+++

Jeg ønskede ikke mine micro-blogging "snippets" som jeg vil bruge på LinkedIn, skulle "forurene" søgeindekset her på Kiils.

Derfor skiftede jeg

```
[                                                                          
    {{ range $index, $value := where .Site.Pages ".Draft" false }}         
    {{ if $index }}, {{ end }}                                             
    {                                                                      
        "url": "{{ .RelPermalink }}",                                      
        "title": "{{ .Title }}",                                           
        "content": {{ .Content | plainify | jsonify }}                     
    }                                                                      
    {{ end }}                                                              
]      
```

ud med

```
[                                                                          
    {{ range $index, $value := where ( where .Site.Pages "Section" "!=" "short" ) ".Draft" false }}                                                   
    {{ if $index }}, {{ end }}                                             
    {                                                                      
        "url": "{{ .RelPermalink }}",                                      
        "title": "{{ .Title }}",                                           
        "content": {{ .Content | plainify | jsonify }}                     
    }                                                                      
    {{ end }}                                                              
]    
```
