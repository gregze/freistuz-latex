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

* `\chapter{Abschnittname}`  Abschnitt (Politik, Kultur, etc., (erzeugt keine Ausgabe, erscheint *spaeter* nur im Rubrikon)
* `\section{Ein Artikel}` Artikelueberschrift
* `\sectionsubtitle{Artikelunterschrift}`  Artikelueberschrift Untertitel

### Weitere Befehle
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