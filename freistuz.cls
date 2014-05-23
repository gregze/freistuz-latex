% ======================================
% DOCUMENTATION
% ======================================
% LaTeX Klasse fuer die Studierendenzeitung freistuz
% Fuer die Benutzung mit XeLaTeX
%
% Autor: Moritz Hoffmann
% Datum: 23. Mai 2014
%
% ======================================
% BASIC CONFIGURATION
% ======================================
% Use KOMA-Script class as startoff
\LoadClass{scrreprt}
% Declare required Tex Format
\NeedsTeXFormat{LaTeX2e}
% Class description and name
\ProvidesClass{freistuz}[23/05/2014 - LaTex-Klasse fuer freie Studierendenzeitung Freiburg]
%
% ======================================
% REQUIRED PACKAGES
% ======================================
% Fontspec package to customize fonts
\usepackage{fontspec}
% Titlesec package to customize titles
\usepackage{titlesec}
%
% ======================================
% FONT DEFINITIONS
% ======================================
% Haupt Font (siehe fontspec package documentation)
\setmainfont{DejaVu Sans}
%
% Font für Artikelueberschriften
% \providecommand...
%
% ======================================
% STYLE DEFINITIONS
% ======================================
% Aussehen und Stile ab hier
% Normaler Style fuer Fliesstext
\providecommand{\StyleNormal}{\normalsize\normalfont}
% Style fuer Subtitel von Artikelueberschriften
\providecommand{\StyleSectionSubtitle}{\it}
%
% Bündigkeit der Artikelüberschriften
\providecommand{\justifyheading}{\raggedleft}
%
% ======================================
% SECTION DEFINITIONS
% ======================================
% Article title subtitle
\providecommand{\sectionsubtitle}[1]{\StyleSectionSubtitle\hfill#1\StyleNormal}
%
% ======================================
% TITLE DEFINITIONS
% ======================================
% Style headline and title elements
% See titlesec package manual p.4: http://sunsite.informatik.rwth-aachen.de/ftp/pub/mirror/ctan/macros/latex/contrib/titlesec/titlesec.pdf
% % \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before-code>}{<after-code>}
%
% Format sections
\titleformat{\section}[display]{\bfseries\justifyheading}{\thesection}{0em}{}{}
\titleformat{\subsection}[block]{\bfseries}{}{0em}{}{}
%
% "Disable" Counter
\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{}
%