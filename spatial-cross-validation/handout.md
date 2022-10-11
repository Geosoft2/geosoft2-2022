@Felioxx @tlehman1

# Handout Spatial Cross Validation

why (challenges and specifics of assessing model quality when working with spatial data)? when? how ? ...

### Was ist Spatial Cross Validation?
- Hier wird ein Modell aus räumlichen Daten erstellt, welches von bestimmten Variablen abhängt und auf gemessenen Stichproben basiert.
- Mittels Spatial Cross Validation wird ein Modell erstellt, welches auf ein zufälliges Gebiet zugeschnitten ist.
- Hierfür werden Validierungsdaten aus den Trainingsdaten extrahiert und es wird die Vorhersage berechnet.
- Am Ende wird die zuvor berechnete Vorhersage mit den tatsächlich gemessenen Daten verglichen.

### Ziel von Spatial Cross Validation?
- Ziel ist es eine möglichst genaue Vorhersage aus den Trainingsdaten zu errechnen.
- Es soll das bestmögliche Modell ausgewählt werden.

### Validierungserstellung
- Ein Rauschen ist in der Messung immer enthalten, wobei hier darauf geachtet wird, dass nur die wahre Abhängigkeit, ohne das Rauschen, vom Algorithmus dazugelernt wird.
- Um dies zu ermöglichen wird aus den gleichen Daten ein Validierungsset erstellt, wobei das Validierungsset nicht! das Trainingsset ist.
- Das Rauschen ist laut der klassischen Kreuzvalidierung immer zufällig, sodass Validierungssets unabhängig von Trainingssets sind.

### Beispiel anhand eines Waldes
- Wir haben einen Wald mit 25 Bäumen.
- Zufällig werden 5 Gruppen mit je 5 Bäumen erstellt, sodass eine von den fünf Gruppen immer das Validierungsset ist und die restlichen 20 Bäume das Trainingsset bilden.
- Nun wird das Modell mit dem Trainingsset trainiert und mit dem Fehler auf das Validierungsset abgebildet.
- Um ein eindeutiges Ergebnis zu bekommen wiederholt sich der ganze Prozess mit jeder zuvor zufällig erstellten Gruppe.
- Die Trainingssets und die Validierungssets sollten eigentlich unabhängig sein.

### Problem der räumlichen Korrelation
- Wie im Beispiel schon angesprochen, sollten die beiden Sets unabhängig sein, allerdings ist dies aufgrund des Toblers First Law of Geography nicht der Fall.
- "Everything is related to everything else, but near things are more related than distant things."
- Das Problem ist, dass das Rauschen bei dem Trainings- als auch dem Validierungsset gleich sein kann. 
- Im Beispiel: Bäume nahe eines Flusses haben durch ihre Nähe zum Fluss eine höhere Wuchshöhe (sowohl beim Trainings- als auch beim Validierungsset).
- Die klassische Cross Validation führt bei räumlichen Daten oft zu schlechten Ergebnissen, da die Korrelation zu optimistisch mit den Daten umgeht und nicht die Umgebung mit berücksichtigt.

### Verfahren zur räumlichen Kreuzvalidierung

1. 
- Buffering: die Individuen des Validierungssets werden in einer Box ausgewählt und außen herum wird ein Buffer erstellt, welcher das Validierungsset von der Umgebung abgrenzt.
- Die Individuen innerhalb dieser Bufferregion werden für die weiteren Schritte nicht berücksichtigt.
- Lokal rauschende Faktoren können so besser ausgeschlossen werden.
- Die Größe der Bufferregion hängt von der Autokorrelation ab.

2. 
- Spatial Leave-one-out: hier wird das Validierungsset nur aus einem Individuum gebildet und außen herum wird auch ein Buffer erstellt.
- Der Vorteil ist, dass die Korrelation geringer ist.
- Der Nachteil ist, dass es kein guter Durchschnitt ist, da nur ein Individuum betrachtet wird.

### Vergleich klassische und räumliche Kreuzvalidierung
- Für räumliche Daten sind die Schätzfehler der räumlichen Kreuzvalidierungsverfahren geringer.
- Der Schätzfehler, der am Ende des Algorithmus berechnet wurde, sollte immer hinterfragt werden.
- Hierbei sollte man sich immer Gedanken über den Validierungsprozess und über die Rohdaten machen.