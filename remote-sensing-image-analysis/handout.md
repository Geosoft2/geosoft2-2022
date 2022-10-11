# Remote Sensing Image Analysis
[@Lorano98](http://github.com/Lorano98/), [@Laxeros07](https://github.com/Laxeros07)

## Übersicht
Fernerkundung ist die berührungsfreie Datenerfassung, Datenvisualisierung und Analyse

* Rauminformationsgewinn mit Hilfe von Luftbildern
* Ziele: Navigation, Raumanalyse, Planung, sammeln wissenschaftlicher Observationen etc.
* Bereiche: Kartographie, Land-, Forstwirtschaft, wissenschaftliche Datenerhebung

## Collection
* Erhebung durch:
  * Satelliten
  * Flugzeuge
  * Drohnen
  * Bodensensoren

## Procession
* Methoden der Klassifikation:
  * Unüberwacht
  * Überwacht
  * Objektbasiert
* Durch die Kombination von verschiedenen Datenquellen werden mit Hilfe von automatisierten Prozessen unterschiedliche Landnutzungen einer Klasse zugeordnet

### Objektklassen
* sind klar definierte Gruppen von bestimmten Geoobjekten
* haben verschiedene Reflektionseigenschaften
 
### Unüberwachte Klassifikation vs. Überwachte Klassifikation
* Bei überwachter Klassifikation gibt es Trainingsdaten
* Dadurch kann man vorher festlegen, welche Klassen es geben soll <br>
&rarr; Überwachte ist besser


## Usage
* Analyse der Vegetation: NDVI, Burned Ratio Index
* Flächenanalysen machen durch Klassifikation
* Erforschung von Phänomenen des Klimawandels (Wüstenbildung, Gletscherrückgang, etc.)
* Wettervorhersage
* Informationsquelle im Krieg

## Resolution
* Räumliche Auflösung: Pixelgröße
* Zeitliche Auflösung: Zeitspanne zwischen Bildern der selben Region
* Spektrale Auflösung: Abgedeckter Wellenbereich
* Radiometrische Auflösung: Bitanzahl

## Data Types
* Datenportal: Earth Explorer &rarr; Bereitstellung von Sentinel-2 Daten
* Ergebnis ist für jedes Band eine Rasterdatei im Format JPEG2000 (Deutlich höhere Auflösung als jpg)
* Zusammenfassen zu einem Multibandraster im tif-Format
&rarr; Schnellere Verarbeitung durch Gruppierung möglich

## Quellen
* Folien der Vorlesung „Einführung in den Fernerkundungsmethoden in den Geowissenschaften“ SoSe 2022 von Torsten Prinz, Hanna Meyer und Jan Lehmann
* https://www.usgs.gov/faqs/what-remote-sensing-and-what-it-used
