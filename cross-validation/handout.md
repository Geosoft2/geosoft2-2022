# Geosoftware 2 (WiSe 2022/23) - Cross Validation

[@rob2top], [@derya-sen]

## Motivation

**Gegeben:** Modell mit einem oder mehreren unbekannten Parametern und einem Datensatz

**Vorgehen:** Modell wird an Trainingsdaten angepasst, indem die Modellparameter optimiert werden

**Ziel:** Modell auf Validierungsdaten aus dem selben Datensatz anwenden, die nicht in den Trainingsdaten enthalten waren 

**Problem:** unabhängige Stichprobe von Validierungsdaten zeigt:
  - Modell passt nicht so gut zu Validierungsdaten wie zu Trainingsdaten
  - Große Differenz, vor allem bei kleinem Trainingsdatensatz oder vielen Parametern im Modell


**->** Verwendung von Kreuzvalidierungverfahren um Größe des Effekts abschätzen zu können


## Was ist Kreuzvalidierung
- Ein Verfahren, um die Leistung eines Algorithmus beim Machine Learning zu bewerten und die Fähigkeit eines Modells testen, neue Daten vorherzusagen.
- zufällige Partitionierung des Originaldatensatzes in einen Trainingssatz und einen Testsatz
- in der Regel mehrere Durchläufe

**Trainingsdatensatz:** Algorithmus für überwachtes Lernen trainieren

**Testdatensatz:** Bewertung der Leistung des Modells
- mittlere Kreuzvalidierungsfehler wird als Leistungsindikator festgehalten

![This is an image](https://miro.medium.com/max/640/1*f5EpP3dfLNdpqWGEwPIoqw.png)

## Kreuzvalidierungsverfahren

### Holdout cross-validation
- einfachste Bewertungsmethode
- Der Datensatz wird in zwei Teimengen partitioniert: Trainingsdaten und Validierungsdaten, wobei der Trainingsdatendatz größer als der Validierungsdaten sein muss
- Training und Test wird bei dieser Methode nur einmal durchgeführt

**Vorteil:**
- verkürzte Ausführungszeit bei großen Datensätzen


**Nachteil:**
- Testfehlerraten sind sehr variabel, abhängig davon welche Daten im Trainingdatensatz und welche im Validierungsdatensatz landen 
- Nur ein Teil der Daten wird zum Testen verwendet, wodurch es zu einer hohen Verzerrung (bei kleinen Datensätzen) kommen kann. Dies kann zu einer  Überschätzung des Fehlers führen

![This is an image](https://editor.analyticsvidhya.com/uploads/62390hold%20out_datavedas.jpg)

#

### k-folds cross-validation
- Datensatz wird in k-Teile gleicher Größe aufgeteilt
- Auswahl von k, abhängig von Größe des Datensatzes (in der Regel zwischen 5 und 10)
- Eine Teilmenge wird zum Validieren des Modells verwendet, während  mit der restlichen Teilmenge trainiert wird
- Dieser Vorgang wird k-mal wiederholt, bis jede Teilmenge genau einmal zur Validierung verwendet wurde


**Vorteile:** 
- jeder Datensatz kommt genau einmal im Validierungssatz und k-1 mal im Trainingssatzes vor
- durch k-fache Wiederholung robuster gegenüber Fehler-> Varianz sinkt


**Nachteile:** 
- rechenintensiv (Modell muss k-mal ausgeführt werden)
- nicht geeignet für unbalancierte Datensätze


**Ergebnis:**
- lässt sich aus Durchschnitt aus jeder Iteration berechnen

![This is an image](https://miro.medium.com/max/640/1*2rRcNnIokzJU_-NXm29IMA.gif)
![This is an image](https://de.mathworks.com/discovery/cross-validation/_jcr_content/mainParsys/image.adapt.full.medium.jpg/1630394342112.jpg)
#

### stratified k-fold cross-validation
- Variante / Erweiterung der k-fold cross-validation
- wird besonders bei Klassifizierungen verwendet, bei denen die Splitzs nicht völlig zufällig sind
- die Verteilung von bekannt zu unbekannt ist in den Testklassen wie bei dem gesamten Datensatz gleich


**Vorteile:**
- für kleine Datensätze geeignet
- bei unausgeglichenen Datensätzen, wird das Verhältnis zwischen den Klassen beibehalten


![This is an image](https://miro.medium.com/max/1100/0*T9RM0SSr3bnO0DP_.png)

#

### leave one-/p-out cross-validation
- Variante der k-fold cross-validation
- p Durchläufe
- pro Durchlauf werden p oder ein Element ausgelassen welche dann vorhergesehen werden sollen


**Validierungsdaten:**
- ein Element (leave one-out)
- p Elemente (leave p-out)


**Trainingsdaten:**
- übrige Elemente
- Jedes Element wird sowohl für Training, als auch Validierung verwendet


**Vorteile:**
- einfach zu implementieren
- einfach zu verstehen


**Nachteile:**
- lange Verarbeitungszeit
- ausgelassene Elemente sind trotzdem “bekannt” bevor sie geschätzt werden 


![This is an image](https://miro.medium.com/max/600/1*26vyRHpqGbVAwJq_csUqZQ.gif)

#

### Monte Carlo cross-validation
- Aufteilen der gesamten Daten in Trainings- und Validierungsdaten
- Aufteilung in der Regel: 70-30 %, 60-40 %


**Bedingung für jede Iteration:**
- Zug-Test-Split-Prozentsatz muss unterschiedlich gehalten werden


**Hinweis:** Dieselben Daten können mehr als einmal oder nie in der Testmenge vorkommen
- Modell in dieser Iteration an Zugdatensatz anpassen, Genauigkeit des angepassten Modells am Testdatensatz berechnen
- Iteration viel wiederholen (100, 300, 500 oder mehr)
- Durchschnitt aller Testfehler zur Modellvalidierung nehmen



![This is an image](https://miro.medium.com/max/1100/1*CkRyawn016AI-DRZJdb3Dw.png)
#


### Cross-validation on time series
- Reihe von Testreihen, die aus einer einzelnen Beobachtung bestehen
- Trainingssatz besteht nur aus Beobachtungen, die vor der Beobachtung aufgetreten sind, die den Testsatz bilden
- keine Verwendung zukünftiger Beobachtungen beim Erstellen der Prognose
- früheste Beobachtungen nicht als Testmenge verwendbar (Trainingsmenge zu klein für zuverlässige Vorhersage)


**Regeln:**
- jeder Testsatz enthält einzigartige Beobachtungen
- Beobachtungen aus dem Trainingssatz treten vor ihrem entsprechenden Testsatz auf


**Beispiel:** 5 Beobachtungen, 4-k-CV
-> Ergebnis: 4 Paar Trainings-/Testsätze

![This is an image](https://miro.medium.com/max/828/1*qvdnPF8ETV9mFdMT0Y_BBA.png)
#

### Quellen
https://pro.arcgis.com/de/pro-app/latest/help/analysis/geostatistical-analyst/performing-cross-validation-and-validation.htm
https://de.mathworks.com/discovery/cross-validation.html
https://datascientest.com/de/kreuzvalidierungsverfahren-definition-und-bedeutung-fur-machine-learning#:~:text=Kreuzvalidierungsverfahren%20werden%20h%C3%A4ufig%20beim%20maschinellen,weniger%20voreingenommen%20als%20andere%20Methoden.
https://www.analyticsvidhya.com/blog/2021/05/4-ways-to-evaluate-your-machine-learning-model-cross-validation-techniques-with-python-code/
https://towardsdatascience.com/cross-validation-k-fold-vs-monte-carlo-e54df2fc179b
https://www.datavedas.com/holdout-cross-validation/
https://medium.com/@soumyachess1496/cross-validation-in-time-series-566ae4981ce4
https://otexts.com/fpp3/tscv.html
https://datamines.de/cross-validation/
https://towardsdatascience.com/stratified-k-fold-what-it-is-how-to-use-it-cf3d107d3ea2
https://towardsdatascience.com/understanding-8-types-of-cross-validation-80c935a4976d


