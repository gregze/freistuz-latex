% ======================================
% DOCUMENTATION
% ======================================
% LaTeX Klasse fuer die Studierendenzeitung freistuz
% Fuer die Benutzung mit XeLaTeX
%
% Autoren: Moritz Hoffmann, 
%          David "the Dude" Feeney
% Datum: 23. Mai 2014
%
% ======================================
% BASIC CONFIGURATION
% ======================================
% KOMA-Script als Grundlage
\LoadClass{scrreprt}
% Benoetigtes Tex Format angeben
\NeedsTeXFormat{LaTeX2e}
% Klassenbeschreibung und -name
\ProvidesClass{freistuz}[23/05/2014 - LaTex-Klasse fuer freie Studierendenzeitung Freiburg]
%
% ======================================
% REQUIRED PACKAGES
% ======================================
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
\usepackage{color}
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
\definecolor{stuzgreen}{RGB}{82,180,116}
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
% Kapitelueberschriften Darstellung ausschalten
%\renewcommand{\chapter}[1]{%
%	\chaptermark{#1}
%	\addtocounter{chapter}{1}
%}
% Kapitel Counter setzen
\setcounter{chapter}{1}
%
% Kapitelueberschriften (im Rubrikon)
\providecommand{\StyleChapter}{\FontSection\color{stuzgreen}}
% Artikelueberschriften
\providecommand{\StyleSection}{\FontSection\Huge\bfseries\JustifySection}
% Subtitel von Artikelueberschriften
\providecommand{\StyleSectionSubtitle}{\FontSection\Huge}
% Subsections (Zwischenueberschriften)
\providecommand{\StyleSubsection}{\FontSection\Large\bfseries\JustifySubsection}
% Normaler Style fuer Fliesstext
\providecommand{\StyleNormal}{\normalsize\normalfont}
%
\providecommand{\sectionsubtitle}[1]{\StyleSectionSubtitle\hfill#1\StyleNormal}
% --- LATEX SECTIONS -------------------
% See titlesec package manual p.4: http://sunsite.informatik.rwth-aachen.de/ftp/pub/mirror/ctan/macros/latex/contrib/titlesec/titlesec.pdf
% % \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before-code>}{<after-code>}
%
% Format sections subsections subsubsections etc
\titleformat{\chapter}[display]{}{\thechapter}{0pt}{\StyleChapter}{\StyleNormal}
\titleformat{\section}[display]{}{\thesection}{0em}{\StyleSection}{\StyleNormal}
\titleformat{\subsection}[display]{}{\thesubsection}{0em}{\StyleSubsection}{\StyleNormal}
%
% Counter ausschalten
\renewcommand{\thechapter}{}
\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{}
%
% ======================================
% TABLE OF CONTENTS
% ======================================
%
% WORK IN PROGRESS
% \addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
% \setcounter{tocdepth}{1}
%
% ======================================
% HEADER/FOOTER
% ======================================
% Header/footer Einschalten
\pagestyle{fancy}
% 
% Die Seiten stylen
% Zur Erklaerung siehe fancyhdr Doku:
% http://ftp.uni-erlangen.de/mirrors/CTAN/macros/latex/contrib/fancyhdr/fancyhdr.pdf
\fancyhead{}
% Die Chaptermark neu definieren
%%%%% \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
% Leftmark = Chaptermark anzeigen
\fancyhead[RO,LE]{\leftmark}
% 
% Die Ruler weg
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
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
% OTHER COMMANDS
% ======================================
%
% Column break