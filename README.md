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
* `\subsection{Unterberschrift}` Zentrierte Zwischenueberschrift innerhalb Artikel 

### Weitere Befehle

#### Spalten
Umgebung für `N` Spalten: 
	
	\begin{multicols}{N}
		Dieser Text wird zweispaltig gesetzt...
	\end{multicols}
	Dieser Text ist wieder einspaltig...

#### Bilder einbinden
Bilder werden mildem Befehl `\bild[<skalierung>]{<quelle>}{<untertitel>}` eingebunden. Die Parameter haben folgende Bedeutung:
* `<skalierung>` (optional) das Bild wird automatisch auf Zeilenbreite skaliert. Ist eine andere Skalierung gewnscht, so muss dies angegeben werden. Z.B. skaliert die Angabe `0.8` das Bild auf 80% der Zeilenbreite.
* `<quelle>` Pfad zum Bild **Bei Fehlern in der Ausgabe zuerst diesen berprfen** und dann erst den Administrator kontaktieren!
* `<untertitel>` = Caption fuer das Bild

#### Werbung einbinden
Experimentelles Feature, benutzt das `textpos`-Paket. Werbung viertelseitig einbinden mit `\begin{textblock}{1}(<x>,<y>)` wobei `x` und `y` für die Position auf der Seite stehen. also

	(x,y)	| Position
	======================
	(0,0)	| Links oben
	(1,0)	| Rechts oben
	(0,1)	| Links unten
	(1,1) | Rechts unten

Dann innerhalb des Textblock ein `\bild{<pfad>}{}` einbinden (ohne Beschreibung). Halbseitige Werbung durch einbinden der Grafik in der linken Spalte unter Angabe von `2` als Skalierung, also `\bild[2]{<pfad>}{}`.

#### Normales LaTeX-Markup.

#### Inhaltsverzeichnis
Damit das toc im zweispaltigen Modus nicht die Formatierung killt, muss der Befehl `\renewcommand{\contentsname}{Inhalt}` in die Präambel des `.tex`-Dokument geschrieben werden.

### Minimalbeispiel

	\documentclass{freistuz}
	
	\begin{document}
		\section{Ukraine-Krise}
		\sectionsubtitle{Neues aus dem Osten}
		Lorem Ipsum dolor sit amet...
	\end{document}
	
## Release Notes
Version 0.3 b
Autor: Moritz Hoffmann    
Datum: 30. Mai 2014