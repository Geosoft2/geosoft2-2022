@maschroder @JonthMM

Docker
Why? When? How?; usage in computer science (reproducible research)...
=====


---------------------------------------------------------------------

Docker - why and when?
----------------------

### Docker 

- Open-Source Software zur Sicherstellung der Funktionalität einer Anwendung in jeder Umgebung anhand von Containerisierung
- Verwendung für Entwicklung, Test, Ausführung und Vertrieb von Anwendungen
- Kapselung von Anwendungen in Containern
- Kostenlose Benutzung möglich
    - Erweiterungen als Abo in mehreren Stufen möglich
- Bessere und erleichterte Entwicklung 
    - Unabhängigkeit durch Container sowohl von Laufzeit- aber auch Entwicklungsumgebung gewährleistet
    - Mehrere Anwendungen parallel erstellen ohne gegenseitige Störungen
    - Einfacheres, systemunabhängiges Testen von Abläufen und Funktionalitäten
    - Gute Funktionalität im Zusammenhang mit Microservices
    - Ein erstellter Container kann immer wieder genau so wie er ist über all genutzt werden (reproducible research)
- Benutzung über Desktop Anwendung "Docker Desktop"
    - Windows und MacOS
    - Einfache Containerisierung von Anwendungen und Benutzung dieser
    - Bereitstellung von Basis-Containern als Images
- Weitergabe von Containern über Dockerhub

### Containerisierung

- Ein Container ist Software, welche mit dem gesamten Code und allen Abhängigkeiten in einer standardisierten Einheit verpackt wird um so bessere Entwicklung, Einsatz und Verteilung dieser zu ermöglichen
- Unterstützt Schnelligkeit und Zuverlässigkeit
- Unabhängig von Entwicklungs- und Laufzeitumgebung verhält sich containerisierte Software immer gleich
- Im Vergleich zu Hardware oder virtuellen Umgebungen ressourcensparend
- Einfacherere Einteilung der Benutzung - nur die Container die wirklich gebraucht werden
- Laufen mehrere Container gleichzeitig, passiert dies unabhängig voneinander, also ohne Komplikationen untereinander
- Deutlich einfachere Portierung der gewünschten Software möglich

### Docker Container & Images

- Container, die auf Docker-Engine laufen sind:
  - standardisiert (d.h. importierbar)
  - effizient i.S.v. reduzierter Größe und nicht vorhandener Server Kosten
  - isoliert von anderen Containern
  
- Ein Image ist eine alleinstehend ausführbare Datei, die alles Nötige wie Code, Laufzeitumgebung, Bibliotheken etc. enthält
- Es ist eine (rein) lesbare Schablone mit Anweisungen zur Erstellung eines Containers
- Um ein Image zu erstellen, wird ein Dockerfile mit einfacher Syntax über Anweisungen zum Erstellen und zur Ausführung des Images angefertigt
- Container ist die ausführbare Instanz eines Images

Informationsfluss im Format: Dockerfile -> Docker-Image -> Docker-Container

### Dockerhub

- Von Docker betriebene Plattform um Container Images zu finden und zu teilen
- Weltweit führender Repository-Hostingservice für Container Images
- Sehr große Auswahl an bereits fertigen und direkt einsetzbaren Container Images
- Durch Verknüpfung mit Docker Desktop direkter Download & Start sehr einfach möglich
- Durch Upgrade möglich:
  - Besseres Verwalten von Freigabe der eigenen Repositories
  - Automatisches Erstellen eines Container Images aus Github Repositories durch Github (auch "live" bei jedem neuen Commit durch Webhooks)

Docker - How?
-------------

### Umsetzung der Containersierung mit Docker

- Voraussetzung ist fertig installiertes Docker Desktop 
- Dockerfile + Docker build + Docker Run

### Dockerfile 

- Das Dockerfile enthält Anweisungen für das Image
- Ein neu erstelltes Image stammt immer von einem 'Basis-Image' ab
- Das Dockerfile bestimmt für das neue Image das 'Basis-Image' und ggf. Spezifikationen 
  -> docker build
- Ausschließen von Dateien im Build-Prozess: .dockerignore

- Wichtige Anweisungen im Dockerfile:

   - FROM: Gibt 'Basis-Image' an (erste Anweisung und einzigartig)
   - ENV: Setzt Umgebungsvariablen für Build-Prozess und Cotainer-Laufzeit
   - WORKDIR: Aktuelles Verzeichnis wechseln
   - USER: Nutzer und Gruppenzugehörigkeit wechseln
   - COPY: Dateien und Verzeichnisse in das Image kopieren
   - RUN: Befehl im Image ausführen
   - etc.

### Wichtige Docker Befehle (Build, run, rm)

- Docker Build im Format:

    docker build [OPTIONS] PATH | URL | -
    
    z.B.  docker build https://github.com/maschroder/geosoft2-2022
  
    - Baut Images aus dem Dockerfile und dem Kontext, bestehend aus Pfad oder URL (z.B. Git repository)


- Docker Run im Format:

   docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
   
   Zum Ausführen reicht:
   
   docker run [docker_image]
   
   - benötigt ein Image, um daraus einen Container zu erstellen und auszuführen
   - Durch Hinzufügen von Attributen zur basic Syntax können z.B. Container Name und Volumes definiert werden

   docker container run --name [container_name] [docker_image]
   
   
- Docker rm im Format:
   
   docker rm [OPTIONS] CONTAINER [CONTAINER...]
   
   - Entfernt einen oder mehrere Container
   


Docker Compose
--------------

- Verlinkung von Containern notwendig z.B. bei Webserver oder Datenbank -> bei üblichen Anwendung sehr unübersichtlich
- Ermöglicht das Erstellen mehrerer Container in einer Datei und definiert deren Beziehungen untereinander
- docker-compose.yml 
   - Diese Datei definiert Container + Beziehungen
   - docker-compose up erzeugt und startet alle Container aus YAML File
   - docker-compose build baut Container zusammen und tagged diese, damit sie bei Änderungen (z.B. im Dockerfile) schneller verfügbar sind
   - docker-compose rm entfernt getaggten Container

### Quellen

- Docker Inc. (2020). Docker Build. https://docs.docker.com/engine/reference/commandline/build/.
- Docker Inc. (2020). Docker Overview. https://docs.docker.com/get-started/overview/.
- Docker Inc. (2020). Sample Application. https://docs.docker.com/get-started/02_our_app/.
- Docker Inc. (2020). Use Containers to Build, Share and Run your applications. https://www.docker.com/resources/what-container/.
- Docker Inc. (2020). Docker Hub. https://www.docker.com/products/docker-hub/
- IONOS (06.07.2022). Dockerfile. https://www.ionos.de/digitalguide/server/knowhow/dockerfile/.
