\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iitthesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\RequirePackage[a4paper,inner=3.75cm,outer=3cm,top=3cm,bottom=3cm,pdftex]{geometry}
\RequirePackage{rotating}
\RequirePackage{graphicx}
\RequirePackage[square,numbers]{natbib}
\RequirePackage{lscape}
\RequirePackage{subfigure}
%\RequirePackage{hyperref}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{xcolor}
\hypersetup{
  colorlinks   = true, %Colours links instead of ugly boxes
  urlcolor     = black, %Colour for external hyperlinks
  linkcolor    = black, %Colour of internal links
  citecolor   = black %Colour of citations
}
%\bibpunct{(}{)}{;}{a}{,}{,}
%\setcitestyle{round}

\RequirePackage{setspace}
\onehalfspacing
%\doublespacing
\setlength{\parskip}{12pt}

\renewcommand*\arraystretch{1.5}
\usepackage{fancyhdr} 
%\fancyhf{}
%\cfoot{\thepage}
\pagestyle{fancy} 

\RequirePackage[hang,small]{caption}
\RequirePackage{multirow}
\RequirePackage{enumerate}
\RequirePackage{pifont}% http://ctan.org/pkg/pifont

\newcommand{\cmark}{\ding{51}}%
\newcommand{\xmark}{\ding{55}}%

\DeclareTextFontCommand{\textOF}{\fontfamily{lmtt}\selectfont}


\DeclareTextFontCommand{\textOF}{\fontfamily{lmtt}\selectfont}

\renewcommand{\@makechapterhead}[1]{%
\vspace*{50\p@}%
{\parindent \z@ \raggedright \normalfont
\ifnum \c@secnumdepth >\m@ne
\Huge \bf \thechapter \space #1\par % Chapter number
\par\nobreak
\vspace{-10pt}
\fi
%\interlinepenalty\@M
%\Huge \bf #1\par % chapter title
\nobreak
\vskip 40\p@
}}

\renewcommand{\@makeschapterhead}[1]{%
\vspace*{50\p@}%
{\parindent \z@ \raggedright
\normalfont
\interlinepenalty\@M
\Huge \bf #1\par % chapter title
\nobreak
\vskip 40\p@
}}

\endinput
