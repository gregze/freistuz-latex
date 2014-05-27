# freistuz-latex   

LaTeX-Klasse fuer die neue Studierendenzeitung freistuz.   

## Handhabung
Zur Verwendung mit XeLaTeX2e. Zwecks Installation der Klassendatei bitte bislang das Internet konsultieren, z.B. Google: "Install custom LaTeX class"    

Abhaengigkeiten:
* `titlesec`
* `fontspec`
* `multicol`


### Grundlagen
Dokumentenklasse: `freistuz`. Diese stellt das Layout bereit.   
Die grundlagigsten Befehle:

* `\kapitel{Abschnittname}`  Abschnitt (Politik, Kultur, etc., (erzeugt keine Ausgabe, erscheint nur im Rubrikon)
* `\section{Ein Artikel}` Artikelueberschrift
* `\sectionsubtitle{Artikelunterschrift}`  Artikelueberschrift Untertitel
* `\subsection{Unterüberschrift}` Zentrierte Zwischenueberschrift innerhalb Artikel 

### Weitere Befehle

#### Bilder einbinden
Bilder werden mildem Befehl `\bild[<skalierung>]{<quelle>}{<untertitel>}` eingebunden. Die Parameter haben folgende Bedeutung:
* `<skalierung>` (optional) das Bild wird automatisch auf Zeilenbreite skaliert. Ist eine andere Skalierung gewünscht, so muss dies angegeben werden. Z.B. skaliert die Angabe `0.8` das Bild auf 80% der Zeilenbreite.
* `<quelle>` Pfad zum Bild **Bei Fehlern in der Ausgabe zuerst diesen überprüfen** und dann erst den Administrator kontaktieren!
* `<untertitel>` = Caption fuer das Bild

Normales LaTeX-Markup.

### Minimalbeispiel

	\documentclass{freistuz}
	
	\begin{document}
		\section{Ukraine-Krise}
		\sectionsubtitle{Neues aus dem Osten}
		Lorem Ipsum dolor sit amet...
	\end{document}
	
## Release Notes
Version 0.0 (nullkommanull)   
Autor: Moritz Hoffmann    
Datum: 23. Mai 2014