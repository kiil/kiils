+++
#draft = true
#genrer =
title = 'Fra hledger tidsregnskab til treemap i dash'
skribenter = ['lennart-kiil']
date = 2023-02-18T08:35:10+01:00
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
emner = ['datavisualisering']
tools = ['hledger', 'plotly', 'dash']
+++

Tidsforbrug registreret i ledger cli eller hledger kan rapporteres som


```
       3  administrativt:bureaukrati
       6  administrativt:fundraising
       7  administrativt:teknik
       2  redaktionelt:feedback
       1  redaktionelt:ideudvikling
       5  redaktionelt:research:pressekontakt:frugtbar
       5  redaktionelt:research:pressekontakt:unyttig
      37  redaktionelt:skrive
```

med kommandoen `hledger -f folkets-tid.journal bal -c 1.`.

Det er relativt nemt med nushell eller nvim eller andre værktøjer at omsætte til en csv som følger:

```
values,domains,activities,details,status
3,administrativt,bureaukrati,None,None
6,administrativt,fundraising,None,None
7,administrativt,teknik,None,None
2,redaktionelt,feedback,None,None
1,redaktionelt,ideudvikling,None,None
5,redaktionelt,research,pressekontakt,frugtbar
5,redaktionelt,research,pressekontakt,unyttig
37,redaktionelt,skrive,None,None
```

Og den fil kan så bruges med plotly til at lave en miniapp i dash:

```
from dash import Dash, html, dcc
import plotly.express as px
import pandas as pd

app = Dash(__name__)

df = pd.read_csv('treemap1.csv').replace("None", None)

fig = px.treemap(df, path=[px.Constant("Tidsforbrug"), 'domains', 'activities', 'details', 'status'], values='values')
fig.update_traces(root_color="lightgrey")
fig.update_layout(margin = dict(t=50, l=25, r=25, b=25))
fig.update_traces(marker=dict(cornerradius=10))
app.layout = html.Div(children=[
    html.H1(children='Tidsregnskab'),

    html.Div(children='''
        Tidsforbrug på Folkets Avis januar 2023.
    '''),

    dcc.Graph(
        id='example-graph',
        figure=fig
    )
])

if __name__ == '__main__':
    app.run_server(debug=True)
```

Det giver så dette treemap

![](/erfaring/dash-treemap.png)

Og man kan klikke sig ind på det:


![](/erfaring/dash-treemap-detail.png)

Det kan man dog ikke her hvor det bare er affotograferet fra serveren som kun kører lokalt.

Treemaps giver et godt overblik over tidsregnskab.
