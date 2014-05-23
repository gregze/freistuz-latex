% ======================================
% DOCUMENTATION
% ======================================
% LaTeX Klasse fuer die Studierendenzeitung freistuz
% Fuer die Benutzung mit XeLaTeX
%
% Autor: Moritz Hoffmann
% Datum: 23. Mai 2014

% ======================================
% BASIC CONFIGURATION
% ======================================
% Use KOMA-Script class as startoff
\LoadClass{scrreprt}
% Declare required Tex Format
\NeedsTeXFormat{LaTeX2e}
% Class description and name
\ProvidesClass{freistuz}[23/05/2014 - LaTex-Klasse fuer freie Studierendenzeitung Freiburg]

% ======================================
% REQUIRED PACKAGES
% ======================================
% Fontspec package to customize fonts
\usepackage{fontspec}
% Titlesec package to customize titles
\usepackage{titlesec}

% ======================================
% TITLE DEFINITIONS
% ======================================
% Reset section/subsection indent and set font
% See titlesec package manual p.19: http://sunsite.informatik.rwth-aachen.de/ftp/pub/mirror/ctan/macros/latex/contrib/titlesec/titlesec.pdf
\titleformat{\section}[block]{\bfseries}{}{0em}{\Large}
\titleformat{\subsection}[block]{\bfseries}{}{0em}{}

% "Disable" Counter
\renewcommand{\thesection}{}
\renewcommand{\thesubsection}{}

% ======================================
% FONT DEFINITIONS
% ======================================
% Main-font for text see fontspec package documentation
\setmainfont{DejaVu Sans}