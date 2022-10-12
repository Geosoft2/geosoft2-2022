@pmunding @tkrumrei

# Machine learning for spatial prediction
## 1. Was ist Machine Learning
  - ist eine Unterkategorie der künstlichen Intelligenz
  - beschreibt den Erwerb von Wissen durch ein künstliches System
  - verwendet von Entwicklern vorher bereitgestellte Algorithmen und Technologien zur Mustererkennung
  - Basierend auf diesen Mustern kann der Computer z.B. Prognosen erstellen
  - durch weitere Datensätze lernt der Computer immer mehr dazu und verbessert seine Prognossen und Ergebnisse

### Warum lässt man Maschinen lernen? Ganz einfach
  - Maschinen sind auf Dauer viel präziser
  - Maschinen werden nicht müde 
  - Maschinen sind vorallem bei größeren Daten schneller --> Big-Data Managment
  - Maschinen können permanent weiter lernen 

### Die 3 Typen von maschinellem Lernen
  - das überwachte und unüberwachte Lernen wird am meißten eingesetzt

Das überwachte Lernen (supervised learning):
  - es werden gelabelte Trainingsdatensätze benutzt
  - die Modelle sortieren ungelabelte Datensätze dann den Labeln hinzu
  - Beispielalgorithmen: Classification und Kriging Algorithmus

Das unüberwachte Lernen (unsupervised learning):
  - es gibt keine Trainingsdatensätze
  - der Computer versucht alleine Muster und Labels zu finden
  - das Ergebnis ist nicht vorhersehbar
  - Unsupervised models erstellen keine Vorhersagen, sie Gruppieren ledglich und sind daher schlecht für spatial predictions geeignet
  - Beispielalgorithmen: Cluster Algorithmen

Das bestärkende Lernen (reinforcement learning):
  - der Algorithmus erlent eine Strategie, um in einem festgelegten Bereich einen bestimmten Zielzustand zu erreichen
  - Beispielalgorithmen: Markov Decision Process

## Spatial Data Analysis
  - Prozess der Erkennung und Überwachung der physikalischen Eigenschaften eines Gebietes
  - Machine Learning ist für räumliche  Daten besonders geeignet 
  - deshalb wird es schon seit über drei Jahrzenten in der Fernerkundung verwendet
  - Satellitenbilder zum Beispiel sind viel zu groß für den Menschen um Muster zu erkennen 
  - In der Fernerkundung wird mit Geodaten (räumliche Daten) gearbeitet 
  - Diese haben im Gegensatz zu tabellarischen Daten viele weitere Eigenschaften wie zum Beispiel zur räumlichen Einordnung
    - Es gibt zwei Arten von Geodaten: Vektor- und Rasterdaten 

- Vektordaten können aus Punkt-, Linien- oder Polygonformen bestehen
- Rasterdaten bestehen aus Pixeln als Bild 

- Diese haben oft einen räumlichen Trend, ein Muster oder bestimmte  Verhaltensweisen, welche viel Raum zur Analyse von Mustern bieten
- Zum Beispiel Wolkenbewegungen deuten auf Regen hin, in Wüsten stehen keine Bäume
- räumliche Analysen können zum Beispiel bei R oder auch ArcGIS durchgeführt werden

## Methoden für räumliche Vorhersagen
### Kriging / Empirical Bayesian Kriging (EBK)
- Kriging ist ein geostatistisches Verfahren
- es werden unbekannte Werte durch die umliegenden (bekannten) Werte interpoliert und angenährt
- beim konventionellen Kriging wird lediglich ein Semiovariogramm zur Vorhersage erstellt
- bei EBK werden mehrere Semiovariogramme und die Bayes'schen Regeln verwendet

### Regression 
- d

### Clustern 
- d

## Quellen
- https://www.analyticsvidhya.com/blog/2021/03/introducing-machine-learning-for-spatial-data-analysis/
- https://www.hpe.com/de/de/what-is/machine-learning.html?
- https://link.springer.com/article/10.1007/s00168-021-01101-x
- https://www.youtube.com/watch?v=ZJNSqhEz-bs
- https://gfzpublic.gfz-potsdam.de/rest/items/item_3539922_3/component/file_3539919/content
- https://desktop.arcgis.com/de/arcmap/latest/tools/spatial-analyst-toolbox/how-kriging-works.htm




