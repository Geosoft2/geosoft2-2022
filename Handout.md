# **Area of Applicability - Theory**

Autoren: [@kgalb01](https://github.com/kgalb01), [@rkmd0](https://github.com/rkmd0) <br/><br/>

**Motivation**

- Machine learning Modelle erfreuen sich große Beliebtheit bei räumlichen Modellierungen in Geowissenschaften
  - -> Sind solche Modelle als „magisches Werkzeug" zu verstehen, mit denen man im Prinzip alles Modellieren und Vorhersagen kann?
- Maschine learning Modelle werden in vielen Fällen genutzt, um Vorhersagen zu treffen über Räume und Orte, die weit über die Trainingsdaten hinaus gehen
- Der Raum, zu dem dieser Transfer stattfindet, kann sich signifikant in seinen Eigenschaften von den Trainingsdaten unterscheiden
  - -> Wenn der Algorithmus Aussagen treffen muss, über Orte, die er nicht kennt, kann es zu vielen Fehlern kommen <br/><br/>
  

**Was ist die Area of Applicability?**

- Area of Applicability oder „AOA" bietet ein Maßstab für den unbekannten Raum, den der Algorithmus nicht kennt
- AOA trifft Aussagen darüber, wie zuverlässig Vorhersagen über den gewählten Raum getroffen werden kann, indem:
  - Die Prädiktoren betrachtet werden und man für jeden Pixel berechnet wie stark er sich von den Trainingsdaten, die der Algorithmus kennt, unterscheidet
  - Ab einen bestimmten Schwellenwert der Pixel zu Unterschiedlich ist und somit davon auszugehen ist, dass der Algorithmus an dieser Stelle keine Aussage treffen kann
- Gebiete, wo viele Pixel sich zu stark von den Trainingsdaten unterscheiden, können so ausgeschlossen werden <br/><br/>

**Warum ist die Area of Applicability wichtig?**

- Die Area of Applicability bietet bei der Erstellung von räumlichen Modellen durch machine learning die Möglichkeit zu sehen an welcher Stelle die Trainingsdaten verbessert werden können
  - Bsp.: Wenn man Trainingsdaten von Münster erstellt und die AOA zeigt große Probleme bei Gewässern, kann man so zurück gehen und mehr Trainingsdaten vom Aasee erstellen
- Die Area of Applicability bietet den Nutzer von räumlichen Modellen, die durch machine learning erstellt wurden, die Möglichkeit zu sehen, wie vertrauenswürdig das Modell ist <br/><br/>

**Methodik zur Berechnung der Area of Applicability**

1. Standardisierung der Prädiktoreigenschaften und Einschätzung der Gewichtung der Variablen fürs Trainingsmodell
2. Definition einer euklidischen Distanz als Maßstab für die Ähnlichkeit der Pixel im Prädiktorraum
3. Berechnung des „dissimilarity index" (DI), indem für jeden Pixel die Distanz zu den nächstgelegenen Trainingsdatenpunkt, dividiert wird durch die durchschnittliche Distanz zu allen Trainingsdaten
4. Definition der Area of Applicability durch das Setzen eines Schwellenwerts für den DI <br/><br/>

**Quellen**

'Predicting into unknown space?': [https://presentations.copernicus.org/EGU2020/EGU2020-8492_presentation.pdf](https://presentations.copernicus.org/EGU2020/EGU2020-8492_presentation.pdf)

Youtube: [https://www.youtube.com/watch?v=jChikEb4vgE&t](https://www.youtube.com/watch?v=jChikEb4vgE&t)

Vorlesungsfolien aus dem Kurs Fernerkundung und maschinelle Lernverfahren zur flächendeckenden Erfassung von Umweltvariablen WS 2020/21 von Prof. Dr. Hanna Meyer
