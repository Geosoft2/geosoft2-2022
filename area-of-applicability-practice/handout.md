@luening @MaxiElfers

# Area of Applicability - Practise
### Handout

## Usage/workflow
Die Funktion Area of Applicability (AOA) berechnet bzw. schätzt den Dissimilarity Index (DI) und die abgeleitete Area of Applicability von räumlichen Vorhersage Modellen, indem sie den Abstand neuer Daten im Raum zu den für das Modelltraining verwendeten Daten berücksichtigt.

Wenn die neuen Daten ähnlich zu den bekannten verwendeten Daten sind, wird eine kurze Distanz berechnet (DI tendiert zu 0). Bei einer hohen Distanz wird ein höherer DI ausgegeben.

Merke: Je höher DI-Wert, desto schlechter die räumliche Vorhersage in dem Bereich.

## Data Types
DI - Raster oder Data Frame. Dissimilarity index.

AOA -  Raster oder Data Frame.
     AOA ist entweder 0 (außerhalb der AOA) oder 1 (innerhalb der AOA)

## important functions
aoa( 
  - newdata,
  - model = NA,
  - trainDI = NA,
  - cl = NULL,
  - train = NULL,
  - weight = NA,
  - variables = "all",
  - CVtest = NULL,
- CVtrain = NULL
)

**newdata** - A RasterStack, RasterBrick, stars object, SpatRaster or data.frame. Beinhaltet die Daten, für die eine Vorhersage gemacht werden soll.

**model** - Ein mit caret erstelltes train-Objekt, aus dem Gewichte (basierend auf der Wichtigkeit der Variablen) sowie cross-validation folds extrahiert werden.

**trainDI** - Ein trainDI-Objekt. Optional, wenn trainID berechnet wurde.

**cl** - Ein Clusterobjekt, das z. B. mit doParallel erstellt wurde. Optional. Sollte nur verwendet werden, wenn newdata groß ist.

**train** - Ein data.frame, der die für das Modelltraining verwendeten Daten enthält. Optional. Nur erforderlich, wenn kein Modell angegeben wird.

**weight** - Ein data.frame mit Gewichten für jede Variable. Optional. Nur erforderlich, wenn kein Modell angegeben wird.

**variables** - character vector der erklärenden Variablen. Wenn "all", dann werden alle Variablen des Modells verwendet, oder wenn kein Modell angegeben ist, dann aus dem Trainingsdatensatz.

**CVtest** - 
Liste oder Vektor. Entweder eine Liste, in der jedes Element die Datenpunkte enthält, die während der Kreuzvalidierungsiteration zum Testen verwendet wurden (d. h. zurückgehaltene Daten). Oder ein Vektor, der die ID der Falte für jeden Trainingspunkt enthält. Nur erforderlich, wenn kein Modell angegeben wird.

**CVtrain** - Liste. Jedes Element enthält die Datenpunkte, die während der Kreuzvalidierungsiteration für das Training verwendet wurden (d. h. zurückgehaltene Daten). Nur erforderlich, wenn kein Modell angegeben ist, und nur erforderlich, wenn CVtrain nicht das Gegenteil von CVtest ist (d. h., wenn ein Datenpunkt nicht zum Testen verwendet wird, wird er zum Training verwendet). Relevant, wenn einige Datenpunkte ausgeschlossen werden, z. B. bei Verwendung von nndm.

## Beispiel

![dataset](/area-of-applicability-practice/pictures/dataset.jpeg)

![DEM](/area-of-applicability-practice/pictures/DEM.jpeg)

![di density](/area-of-applicability-practice/pictures/di_density.jpeg)

![DI mit Training](/area-of-applicability-practice/pictures/DI_mit_training.jpeg)

![prediction AOA](/area-of-applicability-practice/pictures/prediction_AOA.jpeg)

![DI ohne Training](/area-of-applicability-practice/pictures/DI_ohne_training.jpeg)

![AOA](/area-of-applicability-practice/pictures/AOA.jpeg)


## Zusammenfassung

- AOA wird verwendet um Bereiche eines Spatial-Datensatzen zu identifizieren, in denen die Schätzungen eines trainierten - Modells nicht sicher angenommen werden können
- AOA ist der Bereich, in welchem ein Modell mit einem bestimmten Fehlerprozent Schätzungen machen kann
- Schätzungen außerhalb des AOA sollten mit Vorsicht behandelt werden

## Quellen

https://search.r-project.org/CRAN/refmans/CAST/html/aoa.html

https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.13650

