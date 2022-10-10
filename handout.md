@maschroder @JonthMM

Docker
Why? When? How?; usage in computer science (reproducible research)...
=====


---------------------------------------------------------------------

Docker - why and when?
----------------------

### Docker 

- Open-Source Software zur Sicherstellung der Funktionalität einer Anwendung in jeder Umgebung anhand von Containerisierung
- Verwendung für Entwicklung, Ausführung und Vertrieb von Anwendungen
- Kapselung von Anwendungen in Containern
- Kostenlose Benutzung möglich
    - Erweiterungen als Abo möglich
- Bessere und erleichterte Entwicklung 
    - Unabhängigkeit durch Container sowohl von Laufzeit- aber auch Entwicklungsumgebung gewährleistet
    - Mehrere Anwendungen parallel erstellen ohne gegenseitige Störungen
    - Einfacheres, Systemunabhängiges Testen von Abläufen und Funktionalitäten
    - Gute Funktionalität im Zusammenhang mit Microservices
    - Ein erstellter Container kann immer wieder genau so wie er ist über all genutzt werden (reproducible research)
- Benutzung über Desktop Anwendung "Docker Desktop"
    - Windows und MacOS
    - Einfache Containerisierung von Anwendungen und Benutzung dieser
    - Bereitstellung von Basis-Containern als Images
- Weitergabe von Containern über Dockerhub

### Containerisierung

- Ein Container ist eine Software, die Code und dessen Abhängigkeiten in einer Anwendung verpackt
- Unterstützt Schnelligkeit und Zuverlässigkeit
- Unabhängig von Entwicklungs- und Laufzeitumgebung verhält sich containerisierte Software immer gleich

### Docker Container & Images

- Container, die auf Docker-Engine laufen sind:
  - standardisiert (d.h. impoertierbar)
  - effizient i.S.v. reduzierter Größe und nicht vorhandener Server Kosten
  - isoliert von anderen Containern
- Ein Image ist eine alleinstehend ausführbare Datei, die alles Nötige wie Code, Laufzeitumgebung, Bibliotheken etc. enthält

### Dockerhub

-

Docker - How?
-------------

### Umsetzung der Containersierung mit Docker

- Voraussetzung ist fertig installiertes Docker Desktop 
- Dockerfile + Docker build + Docker Run

### Dockerfile 

- Das Dockerfile enthält Anweisungen für den Container

### Wichtige Docker Befehle (Build, run, rm)

-

Docker Compose
--------------

### Quellen

- Docker Inc. (2020). Docker Overview. https://docs.docker.com/get-started/overview/.
- Docker Inc. (2020). Sample Application. https://docs.docker.com/get-started/02_our_app/.
- Docker Inc. (2020). Use Containers to Build, Share and Run your applications. https://www.docker.com/resources/what-container/.
