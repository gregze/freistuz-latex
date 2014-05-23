# freistuz-latex   

LaTeX-Klasse fuer die neue Studierendenzeitung freistuz.   

----
### Handhabung
Zur Verwendung mit XeLaTeX2e. Zwecks Installation der Klassendatei bitte bislang das Internet konsultieren, z.B. Google: "Install custom LaTeX class"  

#### Grundlagen
Dokumentenklasse: `freistuz`. Diese stellt das Layout bereit.   
Die grundlagigsten Befehle:

* Abschnitt (Politik, Kultur, ...) `chapter{Abschnittname}` (erzeugt keine Ausgabe, erscheint nur im Rubrikon)
* Artikelueberschrift `section{Ein Artikel}`
* Artikelueberschrift Untertitel `sectionsubtitle{Artikelunterschrift}`

#### Weitere Befehle
Normales LaTeX-Markup.

#### Minimalbeispiel

	\documentclass{freistuz}
	
	\begin{document}
		\section{Ukraine-Krise}
		\sectionsubtitle{Neues aus dem Osten}
		Lorem Ipsum dolor sit amet...
	\end{document}
	

----
### Release Notes
Version 0.0 (nullkommanull)   
Autor: Moritz Hoffmann    
Datum: 23. Mai 2014