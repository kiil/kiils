+++
#draft = true
#genrer =
title = 'Automatisering med systemd'
skribenter = ['lennart-kiil']
date = 2023-02-15
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
emner = ['automatisering']
tools = ['systemd', 'cli', 'terminal', 'linux']
+++

Gå til eller opret `~/.config/systemd/user/`

Lav en servicenavn.service

```
[Unit]
Description=Get subscription creations and deletions

[Service]
Type=simple
Environment=STRIPE=secretkey
WorkingDirectory=/home/lk/GD/TEKST/notebooks/biz/fin/j/stripe/
ExecStart=/home/lk/GD/TEKST/notebooks/biz/fin/j/stripe/stripe-abo.nu

[Install]
WantedBy=default.target
```

Lav en servicenavn.timer

```
[Unit]
Description=Schedule stripe abo every 8 hours
RefuseManualStart=no  # Allow manual starts
RefuseManualStop=no   # Allow manual stops

[Timer]
#Execute job if it missed a run due to machine being off
Persistent=true
#Run 120 seconds after boot for the first time
OnBootSec=120
#Run every 1 minute thereafter
OnUnitActiveSec=28800
#File describing job to execute
Unit=biz-fin-stripe-abo.service

[Install]
WantedBy=timers.target
```

Skal enables een gang hver, det laver et symlink til en underfolder som systemd arbejder ud fra:


```
systemctl --user enable servicenavn.service
systemctl --user enable servicenavn.timer
```

Skal så startes, og kører så efter timer indtil de stoppes, og sker det, skal de startes igen


```
systemctl --user start servicenavn.service
systemctl --user start servicenavn.timer
```


Tjek om service kører med timer

```
systemctl --user list-timers 
```

Tjek den enkelte service

```
systemctl --user status servicenavn
```

Stop timeren hvis den skal justeres

```
systemctl --user stop servicenavn.timer
```

Lav ændringer i filen.

Og genindlæs med ændringer:

```
systemctl --user daemon-reload
```

Og sæt den nye udgave i gang

```
systemctl --user start servicenavn.timer
```

Tjek med

```
systemctl --user status servicenavn
```

og evt

```
systemctl --user list-timers 
```

Se logmeddelelser fra den enkelte service med

```
journalctl --user --unit servicenavn
```




For nemmere overblik installer evt


```
sysz
```


Sådan kan man automatisere mange ting og gange nøjagtigt.
