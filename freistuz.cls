% ======================================
% DOCUMENTATION
% ======================================
% LaTeX Klasse fuer die Studierendenzeitung freistuz
% Fuer die Benutzung mit XeLaTeX
%
% Autoren: Moritz Hoffmann, 
%          David "the Dude" Feeney
% Datum: 31. Mai 2014
% Version: 0.3c
%
% KEY FEATURES:
% .TOC-HACK
% \renewcommand{\contentsname}{Inhalt} muss in .tex-Datei
% stehen, sonst Inhaltsverzeichnis verbuggt.
%
% ======================================
% BASIC CONFIGURATION
% ======================================
% Standardklasse als Grundlage
\LoadClass{book}
% Benoetigtes Tex Format angeben
\NeedsTeXFormat{LaTeX2e}
% Klassenbeschreibung und -name
\ProvidesClass{freistuz}[23/05/2014 - LaTex-Klasse fuer freie Studierendenzeitung Freiburg]
%
% Geometry Einstellungen
\newlength{\randoben}
\newlength{\randunten}
\newlength{\randseite}
%
\setlength{\randseite}{2cm}
\setlength{\randoben}{3.2cm}
\setlength{\randunten}{3.2cm}
%
% Ausgabe
\providecommand{\Ausgabe}{Juni 2014}
%
% ======================================
% REQUIRED PACKAGES
% ======================================
%
% Babel-Paket
\usepackage[ngerman]{babel}
% Font-Kodierung
\usepackage[T1]{fontenc}
% Beschnitt und Seitenraender
\usepackage[%
	% Die Parameter
	twoside,
	left=\randseite,
	top=\randoben,
	bottom=\randunten
]{geometry}
%
% Fontspec package to customize fonts
\usepackage{fontspec}
% Titlesec package to customize titles
\usepackage{titlesec}
% Multicol fuer zweispaltiges Layout
\usepackage{multicol}
% Zum Bilder einbinden
\usepackage{graphicx}
% Fuer Rubriki etc.
\usepackage{fancyhdr}
% Paint me stuzgreen :-)
\usepackage{xcolor}
% Paket zur absoluten Textpositionierung
\usepackage[absolute,overlay]{textpos}
% Paket für Kaesten
\usepackage{framed} 
%
% --------------------------------------
%
% Blindtext
\usepackage{blindtext}
% Fuer If Abfragen
%\usepackage{ifthen}
% Bildunterschriften schön stylen 
%\usepackage{caption, floatrow}
% Fuer FloatBarrier
%\usepackage {placeins}
%
% ======================================
% FONTDEFINITIONS
% ======================================
% Haupt Font (siehe fontspec package documentation)
\setmainfont{DejaVu Sans}
%
% Font für Artikelueberschriften
\newfontfamily\FontSection[Contextuals={WordInitial,WordFinal}]{Ubuntu}
% Font fuer specials
\newfontfamily\FontSpecial[Contextuals={WordInitial,WordFinal}]{Hoefler Text}
% Setze Font für Subsections identisch
\providecommand{\FontSubsection}{\FontSection}
%
%
% ======================================
% COLOR DEFINITIONS
% ======================================
%
% Die schoenste Farbe aller Zeiten
\definecolor{stuzgreen}{RGB}{82,180,116}
% Fuer Kasten
\colorlet{shadecolor}{stuzgreen} 
%
% ======================================
% STYLE DEFINITIONS
% ======================================
% Bündigkeit der Ueberschriften
\providecommand{\JustifySection}{\raggedleft}
\providecommand{\JustifySubsection}{\centering}
%
% Globale Absatzeinrueckung
\setlength{\parindent}{0cm}
% 
% Kapitelueberschriften (im Rubrikon)
\providecommand{\StyleChapter}{
	\FontSection
	\bfseries
	\color{stuzgreen}
}
% Artikelueberschriften
\providecommand{\StyleSection}{
	\FontSection
	\Huge
	\bfseries
	\JustifySection
	\color{black}
}
% Subtitel von Artikelueberschriften
\providecommand{\StyleSectionSubtitle}{
	\FontSection
	\Huge
	\color{black}
}
% Subsections (Zwischenueberschriften)
\providecommand{\StyleSubsection}{
	\FontSection
	\Large\bfseries
	\JustifySubsection
	\color{black}
}
% Normaler Style fuer Fliesstext
\providecommand{\StyleNormal}{
	\normalsize
	\normalfont
	\color{black}
}
%
% ======================================
% LAYOUT ELEMENTS
% ======================================
% --- LATEX SECTIONS -------------------
% See titlesec package manual p.4: http://sunsite.informatik.rwth-aachen.de/ftp/pub/mirror/ctan/macros/latex/contrib/titlesec/titlesec.pdf
% % \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before-code>}{<after-code>}
%
% Die Chaptermark neu definieren
%\renewcommand{\chaptermark}[1]{\markboth{\StyleChapter#1\StyleNormal}{}}
%\renewcommand{\chaptermark}[1]{\markboth{\chaptername}{}} 
%
%\makeatletter
%\renewcommand*{\rightmark}[1]{\thechapter #1}{}%
%\makeatother
%
% Format Kapitel
% Counter instanzieren
\newcounter{kapitel}
\setcounter{kapitel}{0}
% Kapitelueberschriften Darstellung
\newcommand{\kapitelmark}[1]{\StyleChapter#1\StyleNormal}
\providecommand{\kapitel}[1]{%
	\renewcommand{\kapitelmark}{\StyleChapter#1\StyleNormal}
	\addtocounter{kapitel}{1}
}
%
% Format sections subsections subsubsections etc
\titleformat{\section}[display]{}{\thesection}{0em}{\StyleSection}{\StyleNormal}
\titleformat{\subsection}[display]{}{\thesubsection}{0em}{\StyleSubsection}{\StyleNormal}
%
% Counter ausschalten
\renewcommand{\thechapter}{}
\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{}
%
% Subsection Einzug
\makeatletter
\renewcommand\subsection{\@startsection
   {subsection}{2}{0mm}%      		% Name, Ebene, Einzug
   {.4\baselineskip}%            	% Vor-Abstand
   {.4\baselineskip}%            	% Nach-Abstand
   {\StyleSubsection}%   				% Layout
}
\makeatother 
%
% multicol tweaking
\newcommand{\standardcolumnsep}{\setlength{\columnsep}{0.8cm}}
\newcommand{\standardcolrule}{\setlength{\columnseprule}{.4pt}}
\newcommand{\nocolsep}{\setlength{\columnsep}{0pt}}
\newcommand{\nocolrule}{\setlength{\columnseprule}{0pt}}
%
\standardcolumnsep
\standardcolrule
%
%
%
%
% ======================================
% TABLE OF CONTENTS
% ======================================
%
% HACK = FEATURE
% \renewcommand{\contentsname}{Inhalt} soll innerhalb von document-umgebung stehen!
% Nur Sections im Toc anzeigen
\setcounter{tocdepth}{1}
%
% ======================================
% HEADER/FOOTER
% ======================================
% 
% Die Seiten stylen
% Zur Erklaerung siehe fancyhdr Doku:
% http://ftp.uni-erlangen.de/mirrors/CTAN/macros/latex/contrib/fancyhdr/fancyhdr.pdf
\fancypagestyle{plain}{%
\fancyhead{}
\fancyfoot{}
\fancyhead[LO, RE]{\kapitelmark}
\fancyhead[RO, LE]{}
\fancyfoot[LO, RE]{\thepage}
%
% Für die ueberstylten Fussnoten
% \fancyfoot[RE]{Juni 2014 | freistuz | \thepage}
% 
% Die Ruler weg
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
% Header/footer Einschalten
\pagestyle{plain}
%
%
% ======================================
% PICTURES
% ======================================
%
% Bild sofort einbinden
% \bild[<dx>]{<quelle>}{<untertitel>}
\providecommand{\bild}[3][1]{%
	% Einspaltiges Bild
	\begin{minipage}[t]{\linewidth}
		\begin{center}
			\quad\\[.6em]
			% Bild auf \textwidth skalieren
			\includegraphics[width=#1\linewidth]{#2}\\[1em]
			\textit{#3}
			%\caption{#4}
		\end{center}
	\end{minipage}\\[1.2em]
}
%
% ======================================
% GRID/TEXTPOS - WERBUNG
% ======================================
%
\TPGrid{2}{2}
%
% Gesamte A4-Seite Werbung
\providecommand{\xwerbung}[1]{%
	\newpage
	\begin{textblock}{1}(0,0)
		\vspace{-2.2mm}
		\bild[2]{#1}{}
	\end{textblock}
	\quad\newpage
}
%
% ======================================
% OTHER COMMANDS
% ======================================
%
% Section Subtitel
\providecommand{\sectionsubtitle}[1]{%
	\begin{flushright}
		\StyleSectionSubtitle#1\StyleNormal
	\end{flushright}
}