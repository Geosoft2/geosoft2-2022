
@jova10	@starke01

## Monolith Architektur

- In der Vergangenheit gängige Art der Anwendung
- Alle Komponente/Module sind in einem großen Block
	- es gibt nur eine Datenbank worauf wir zugreifen
- Entwicklung, Skalierung und Bereitstellung geschieht in einem Block
- Nur eine Programmiersprache möglich
- Team Kommunikation unabdingbar 
- Konstrukt kompliziert miteinander Verbunden


## Microservice Architecture

- Mittlerweile weit verbreitete Art der Webapplikation
- Aufteilung in kleinere Module 
- Funktionale Aufteilung und keine technische
- Übernahme einer spezifischen Aufgabe
- Entwicklung, Skalierung und Bereitstellung geschieht Individuell 



## Vorteile Microservices

- Wartbarkeit
	- Einzelne Module werden unabhängig voneinander gewartet
- Deployments
	- Jedes Modul kann bei Github einzeln hochgeladen werden und auf Bugs und Fehler überprüft werden in der Liveumgebung
- Sicherheit
	- Jedes Modul hat seine eigene Datenbank. Falls diese gehackt werden sollte, sind die anderen Daten trotzdem sicher, da 
	  jedes Modul und damit auch die zugehörige Datenbank unabhängig sind
- Robustheit
	- Wenn ein Microservice ausfällt, stürzt nicht die ganze Anwendung ab
- Mehr Offenheit
	- Programmiersprachen unabhängig 
	- Jedes Modul hat sein eigenes Entwickler Team, welche unabhängig von anderen Teams sind
- Entwicklung Effizienter
	- kürzere Entwicklungszeit
	- Skalierbarkeit kann schnell bei Bedarf angepasst werden


## Herausforderungen Microservices 

- Aufwand für Überwachung steigt, da jeder Service separat voneinander Überwacht werden muss
- Komplexität steigt
- Kommunikation zwischen den Microservices
	- Da es so viele einzelne Module gibt, ist die Wahrscheinlichkeit das ein Modul ausfällt auch deutlich höher
	- Zudem kann auch die Kommunikation langsamer sein, da es verschieden einzelne Module sind

Quelle: (https://www.sdx-ag.de/2016/11/microservices-vor-und-nachteile/)


## Wie funktionier Microservices 

- Entkoppelt untereinander
	- Umsetzung durch Container (Bsp. Docker, Kubernetes) 
	- Separater Server
- Kommuniziert über Schnittstellen
	- API
	- Message Broker
	- Service Mesh



## Docker Compose 

- Tool zum Definieren und Ausführen von Anwendungen, welche aus mehreren Docker Containern bestehen
- Erfolgt durch eine YAML-File



## Docker Compose Up

- Bei der Verwendung von Docker Compose müssen 3 Schritte ausgeführt werden
	1. Definiert man sich eine Umgebung mithilfe einer Dockerfile
	2. docker-compose.yml definieren, stellt die spätere Anwendung dar
	3. Ausführen mit Hilfe des docker-compose Befehls

## Docker-compose.yml
    version: "3.9"
    services:
      web:
        build: .
        ports:
          - "8000:5000"
        volumes:
          - .:/code
          - logvolume01:/var/log
        links:
          - redis
      redis:
        image: redis
    volumes:
      logvolume01: {}

Quellen [Overview of Docker Compose](https://docs.docker.com/compose/)


