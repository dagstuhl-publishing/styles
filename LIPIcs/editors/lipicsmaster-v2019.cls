%%
%% This is file `lipicsmaster-v2019.cls'.
%% 
%% -----------------------------------------------------------------
%% Author:     Dagstuhl Publishing & le-tex publishing services
%% 
%% This file is part of the lipics package for preparing
%% LIPICS volumes.
%% 
%% Copyright (C) 2018 Schloss Dagstuhl
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is 
%% Schloss Dagstuhl (publishing@dagstuhl.de).
%% -----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{lipicsmaster-v2019}
[2019/05/02 v2.1 LIPIcs volume front matters]
\emergencystretch1em
\advance\hoffset-1in
\advance\voffset-1in
\advance\hoffset2.95mm
\newif\if@nobotseplist  \@nobotseplistfalse
\def\@endparenv{%
  \addpenalty\@endparpenalty\if@nobotseplist\else\addvspace\@topsepadd\fi\@endpetrue}
\def\@doendpe{%
  \@endpetrue
  \def\par{\@restorepar
           \everypar{}%
           \par
           \if@nobotseplist
             \addvspace\topsep
             \addvspace\partopsep
             \global\@nobotseplistfalse
           \fi
           \@endpefalse}%
  \everypar{{\setbox\z@\lastbox}%
            \everypar{}%
            \if@nobotseplist\global\@nobotseplistfalse\fi
            \@endpefalse}}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \expandafter
    \list
      \csname label\@enumctr\endcsname
      {\advance\partopsep\topsep
       \topsep\z@\@plus\p@
       \ifnum\@listdepth=\@ne
         \labelsep0.72em
       \else
         \ifnum\@listdepth=\tw@
           \labelsep0.3em
         \else
           \labelsep0.5em
         \fi
       \fi
       \usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}}%
  \fi}
\def\endenumerate{\ifnum\@listdepth=\@ne\global\@nobotseplisttrue\fi\endlist}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\advance\partopsep\topsep
       \topsep\z@\@plus\p@
       \ifnum\@listdepth=\@ne
         \labelsep0.83em
       \else
         \ifnum\@listdepth=\tw@
           \labelsep0.75em
         \else
           \labelsep0.5em
         \fi
      \fi
      \def\makelabel##1{\hss\llap{##1}}}%
  \fi}
\def\enditemize{\ifnum\@listdepth=\@ne\global\@nobotseplisttrue\fi\endlist}
\def\@title{\@EventTitle}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax
          \ifnum #2=1
            \colorbox[rgb]{0.99,0.78,0.07}{\kern0.15em\@svsec\kern0.15em}\quad
          \else
            \@svsec\quad
          \fi}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
\def\@seccntformat#1{\csname the#1\endcsname}
\def\@biblabel#1{\textcolor{darkgray}{\sffamily\bfseries#1}}
\def\copyrightline{%
  \ifx\@hideLIPIcs\@undefined
	\ifx\@serieslogo\@empty
    \else
      \setbox\@tempboxa\hbox{\includegraphics[height=28\p@]{\@serieslogo}}% 56
      \rlap{\hspace\textwidth\hspace{-\wd\@tempboxa}\hspace{\z@}\vtop to\z@{\vskip-0mm\unhbox\@tempboxa\vss}}%
    \fi
    \scriptsize
    \vtop{\hsize\textwidth
      \nobreakspace\par
      \@Copyright
      \ifx\@EventLongTitle\@empty\else\@EventLongTitle.\\\fi
      \ifx\@EventEditors\@empty\else
        \@Eds: \@EventEditors
        \\
      \fi
      \setbox\@tempboxa\hbox{\includegraphics[height=14\p@,trim=0 15 0 0]{lipics-logo-bw}}%
      \hspace*{\wd\@tempboxa}\enskip
      \href{https://www.dagstuhl.de/lipics/}%
           {Leibniz International Proceedings in Informatics}\\
      \smash{\unhbox\@tempboxa}\enskip
      \href{https://www.dagstuhl.de}%
           {Schloss Dagstuhl -- Leibniz-Zentrum f{\"u}r Informatik, Dagstuhl Publishing, Germany}}%
  \fi}
\def\ps@plain{\let\@mkboth\@gobbletwo
  \let\@oddhead\@empty
  \let\@evenhead\@empty
  \let\@evenfoot\copyrightline
  \let\@oddfoot\copyrightline}
\def\lipics@opterrshort{Option  "\CurrentOption" not supported}
\def\lipics@opterrlong{The option "\CurrentOption" from book.cls is not supported by lipicsmaster.cls.}
\DeclareOption{a5paper}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{b5paper}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{legalpaper}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{executivepaper}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{landscape}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{10pt}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{11pt}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{12pt}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{oneside}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{twoside}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{titlepage}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{notitlepage}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{onecolumn}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{twocolumn}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{fleqn}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{openbib}{\@latexerr{\lipics@opterrshort}{\lipics@opterrlong}}
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{book}
                        \advance\hoffset-2.95mm
                        \advance\voffset8.8mm}
\DeclareOption{numberwithinsect}{\let\numberwithinsect\relax}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[twoside,fleqn]{book}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{13}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt{11.5}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize{8.5}{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\large{\@setfontsize\large{10.5}{13}}
\renewcommand\Large{\@setfontsize\Large{12}{14}}
\setlength\parindent{1.5em}
\setlength\headheight{3mm}
\setlength\headsep   {10mm}
\setlength\footskip{3mm}
\setlength\textwidth{140mm}
\setlength\textheight{222mm}
\setlength\oddsidemargin{32mm}
\setlength\evensidemargin{38mm}
\setlength\marginparwidth{25mm}
\setlength\topmargin{13mm}
\setlength{\skip\footins}{2\baselineskip \@plus 4\p@ \@minus 2\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep\z@ \@plus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep \parsep}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep\z@ \@plus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \z@ \@plus\p@}
\def\ps@headings{%
    \def\@evenhead{\large\sffamily\bfseries
                   \llap{\hbox to0.5\oddsidemargin{\ifx\@ArticleNo\@empty\textcolor{blue}{XX}\else\@ArticleNo\fi:\thepage\hss}}\leftmark\hfil}%
    \def\@oddhead{\large\sffamily\bfseries\rightmark\hfil
                  \rlap{\hbox to0.5\oddsidemargin{\hss\ifx\@ArticleNo\@empty\textcolor{blue}{XX}\else\@ArticleNo\fi:\thepage}}}%
    \def\@oddfoot{\hfil
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox[rgb]{0.99,0.78,0.07}
                                    {\@tempdima\evensidemargin
                                     \advance\@tempdima1in
                                     \advance\@tempdima\hoffset
                                     \hb@xt@\@tempdima{%
                                       \textcolor{darkgray}{\normalsize\sffamily
                                       \bfseries\quad
                                       \expandafter\textsolittle
                                       \expandafter{\@EventShortTitle}}%
                                     \strut\hss}}}}}
    \let\@evenfoot\@empty
    \let\@mkboth\markboth
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble}
\pagestyle{headings}
\setcounter{secnumdepth}{4}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\sffamily\Large\bfseries\raggedright}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\sffamily\Large\bfseries\raggedright}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\sffamily\Large\bfseries\raggedright}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {-3.25ex \@plus-1ex \@minus-.2ex}%
                                    {1.5ex \@plus .2ex}%
                                    {\sffamily\large\bfseries\raggedright}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\z@}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\sffamily\normalsize\bfseries}}
\setlength\leftmargini  \parindent
\setlength\leftmarginii {1.2em}
\setlength\leftmarginiii{1.2em}
\setlength\leftmarginiv {1.2em}
\setlength\leftmarginv  {1.2em}
\setlength\leftmarginvi {1.2em}
\renewcommand\labelenumi{%
  \textcolor{darkgray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumi.}}
\renewcommand\labelenumii{%
  \textcolor{darkgray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumii.}}
\renewcommand\labelenumiii{%
  \textcolor{darkgray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumiii.}}
\renewcommand\labelenumiv{%
  \textcolor{darkgray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumiv.}}
\renewcommand\labelitemi{%
  \textcolor[rgb]{0.6,0.6,0.61}{\ifnum\@listdepth=\@ne
                                  \rule{0.67em}{0.33em}%
                                \else
                                  \rule{0.45em}{0.225em}%
                                \fi}}
\renewcommand\labelitemii{%
  \textcolor[rgb]{0.6,0.6,0.61}{\rule{0.45em}{0.225em}}}
\renewcommand\labelitemiii{%
  \textcolor[rgb]{0.6,0.6,0.61}{\sffamily\bfseries\textasteriskcentered}}
\renewcommand\labelitemiv{%
  \textcolor[rgb]{0.6,0.6,0.61}{\sffamily\bfseries\textperiodcentered}}
\renewenvironment{description}
               {\list{}{\advance\partopsep\topsep\topsep\z@\@plus\p@
                        \labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\ifnum\@listdepth=\@ne\global\@nobotseplisttrue\fi\endlist}
\renewcommand*\descriptionlabel[1]{%
  \hspace\labelsep\textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}#1}}
\newenvironment{abstract}{%
  \vskip\bigskipamount
  \noindent
  \rlap{\color[rgb]{0.51,0.50,0.52}\vrule\@width\textwidth\@height1\p@}%
  \hspace*{7mm}\fboxsep1.5mm\colorbox[rgb]{1,1,1}{\raisebox{-0.4ex}{%
    \large\selectfont\sffamily\bfseries\abstractname}}%
  \vskip3\p@
  \fontsize{9.5}{12.5}\selectfont
  \noindent\ignorespaces}
  {\vskip\baselineskip\noindent
   \subjclassHeading
   \@\ifx\@ccsdescString\@empty
     \textcolor{red}{Author: Please fill in 1 or more \string\ccsdesc\space macro}%
   \else
     \@ccsdescString
   \fi
   \vskip\baselineskip
   \noindent\keywordsHeading
   \ifx\@keywords\@empty
     \textcolor{red}{Author: Please fill in \string\keywords\space macro}%
   \else
     \@keywords
   \fi
   \ifx\@hideLIPIcs\@undefined
     \ifx\@DOIPrefix\@empty\else
       \vskip\baselineskip\noindent
       \doiHeading\doi{\@DOIPrefix.\@EventAcronym.\@EventYear.\@ArticleNo}%
     \fi
   \fi
   \ifx\@category\@empty\else
     \vskip\baselineskip\noindent
     \categoryHeading\@category
   \fi
   \ifx\@relatedversion\@empty\else
     \vskip\baselineskip\noindent
     \relatedversionHeading\@relatedversion
   \fi
   \ifx\@supplement\@empty\else
     \vskip\baselineskip\noindent
     \supplementHeading\@supplement
   \fi
   \ifx\@funding\@empty\else
     \vskip\baselineskip\noindent
     \fundingHeading\@funding
   \fi
   \ifx\@acknowledgements\@empty\else
     \vskip\baselineskip\noindent
     \acknowledgementsHeading\@acknowledgements
   \fi}
\renewenvironment{thebibliography}[1]
  {\if@noskipsec \leavevmode \fi
   \par
   \@tempskipa-3.5ex \@plus -1ex \@minus -.2ex\relax
   \@afterindenttrue
   \@tempskipa -\@tempskipa \@afterindentfalse
   \if@nobreak
     \everypar{}%
   \else
     \addpenalty\@secpenalty\addvspace\@tempskipa
   \fi
   \noindent
   \rlap{\color[rgb]{0.51,0.50,0.52}\vrule\@width\textwidth\@height1\p@}%
   \hspace*{7mm}\fboxsep1.5mm\colorbox[rgb]{1,1,1}{\raisebox{-0.4ex}{%
     \normalsize\sffamily\bfseries\refname}}%
   \@xsect{1ex \@plus.2ex}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\leftmargin8.5mm
         \labelsep\leftmargin
         \settowidth\labelwidth{\@biblabel{#1}}%
         \advance\labelsep-\labelwidth
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \fontsize{9.5}{12.5}\selectfont
   \sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\renewcommand\footnoterule{%
  \kern-8\p@
  {\color[rgb]{0.60,0.60,0.61}\hrule\@width40mm\@height1\p@}%
  \kern6.6\p@}
\renewcommand\@makefntext[1]{%
    \parindent\z@\hangindent1em
    \leavevmode
    \hb@xt@1em{\@makefnmark\hss}#1}
\usepackage[utf8]{inputenc}
\usepackage{microtype}
\IfFileExists{lmodern.sty}{\RequirePackage{lmodern}}{}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage[mathscr]{eucal}
\RequirePackage{amssymb}
\PassOptionsToPackage{retainmissing}{MnSymbol}
\AtBeginDocument{\@ifpackageloaded{MnSymbol}%
    {\expandafter\let\csname ver@amssymb.sty\endcsname\relax
     \let\complement\@undefined
     \RequirePackage{amssymb}}{}}
\RequirePackage{soul}
\sodef\textsolittle{}{.12em}{.5em\@plus.08em\@minus.06em}%
        {.4em\@plus.275em\@minus.183em}
\RequirePackage{color}
\definecolor{darkgray}{rgb}{0.31,0.31,0.33}
\RequirePackage{babel}
\RequirePackage[tbtags,fleqn]{amsmath}
\RequirePackage{enumerate}
\def\@enum@{\list{\textcolor{darkgray}{\sffamily\bfseries\upshape\mathversion{bold}\csname label\@enumctr\endcsname}}%
           {\advance\partopsep\topsep
            \topsep\z@\@plus\p@
            \ifnum\@listdepth=\@ne
              \labelsep0.72em
            \else
              \ifnum\@listdepth=\tw@
                \labelsep0.3em
              \else
                \labelsep0.5em
              \fi
            \fi
            \usecounter{\@enumctr}\def\makelabel##1{\hss\llap{##1}}}}
\def\romanenumerate{\enumerate[(i)]}
\let\endromanenumerate\endenumerate
\def\alphaenumerate{\enumerate[(a)]}
\let\endalphaenumerate\endenumerate
\def\bracketenumerate{\enumerate[{[}1{]}]}
\let\endbracketenumerate\endenumerate
\RequirePackage{amsthm}
\thm@headfont{%
  \textcolor{darkgray}{$\blacktriangleright$}\nobreakspace\sffamily\bfseries}
\def\th@remark{%
  \thm@headfont{%
    \textcolor{darkgray}{$\blacktriangleright$}\nobreakspace\sffamily}%
  \normalfont % body font
  \thm@preskip\topsep \divide\thm@preskip\tw@
  \thm@postskip\thm@preskip
}
\def\@endtheorem{\endtrivlist}%\@endpefalse
\renewcommand\qedsymbol{\textcolor{darkgray}{\ensuremath{\blacktriangleleft}}}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \color{darkgray}\sffamily\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist%\@endpefalse
}
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\ifx\numberwithinsect\relax
  \@addtoreset{theorem}{section}
  \expandafter\def\expandafter\thetheorem\expandafter{%
    \expandafter\thesection\expandafter\@thmcountersep\thetheorem}
\fi
\RequirePackage{graphicx}
\RequirePackage{array}
\let\@classzold\@classz
\def\@classz{%
   \expandafter\ifx\d@llarbegin\begingroup
     \toks \count@ =
     \expandafter{\expandafter\small\the\toks\count@}%
   \fi
   \@classzold}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage[online]{threeparttable}
\def\TPTtagStyle#1{#1)}
\def\tablenotes{\small\TPT@defaults
  \@ifnextchar[\TPT@setuptnotes\TPTdoTablenotes} % ]
\RequirePackage{listings}
\lstset{basicstyle=\small\ttfamily,%
        backgroundcolor=\color[rgb]{0.85,0.85,0.86},%
        frame=single,framerule=0pt,xleftmargin=\fboxsep,xrightmargin=\fboxsep}
\RequirePackage[left,mathlines]{lineno}
\linenumbers
\renewcommand\linenumberfont{\normalfont\tiny\sffamily}
%%%% patch to cope with amsmath
%%%% http://phaseportrait.blogspot.de/2007/08/lineno-and-amsmath-compatibility.html
\newcommand*\patchAmsMathEnvironmentForLineno[1]{%
  \expandafter\let\csname old#1\expandafter\endcsname\csname #1\endcsname
  \expandafter\let\csname oldend#1\expandafter\endcsname\csname end#1\endcsname
  \renewenvironment{#1}%
     {\linenomath\csname old#1\endcsname}%
     {\csname oldend#1\endcsname\endlinenomath}}%
\newcommand*\patchBothAmsMathEnvironmentsForLineno[1]{%
  \patchAmsMathEnvironmentForLineno{#1}%
  \patchAmsMathEnvironmentForLineno{#1*}}%
\AtBeginDocument{%
  \patchBothAmsMathEnvironmentsForLineno{equation}%
  \patchBothAmsMathEnvironmentsForLineno{align}%
  \patchBothAmsMathEnvironmentsForLineno{flalign}%
  \patchBothAmsMathEnvironmentsForLineno{alignat}%
  \patchBothAmsMathEnvironmentsForLineno{gather}%
  \patchBothAmsMathEnvironmentsForLineno{multline}}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\AtBeginDocument{
	\hypersetup{
		breaklinks=true,
		pdfborder={0 0 0},
		pdftitle={\@title},
		pdfauthor={\ifx\@EventEditors\@empty\else\@EventEditors\fi},
		pdfkeywords={LIPIcs, Frontmatter, Preface, Table of Contents},
		pdfcreator={LaTeX with lipicsmaster-v2019.cls and hyperref.sty},
		%TODO Find way to move information to correct fields in pdf metadata
		pdfsubject={LIPIcs, Vol.\@SeriesVolume, \@EventShortTitle; Copyright (C),  \ifx\@EventEditors\@empty\else\@EventEditors\fi; licensed under Creative Commons License CC-BY}
		%pdflicenseurl={https://creativecommons.org/licenses/by/3.0/},
		%pdfcopyright={Copyright (C), \@copyrightholder; licensed under Creative Commons License CC-BY},
	}
}
\RequirePackage[labelsep=space,singlelinecheck=false,%
  font={up,small},labelfont={sf,bf},%
  listof=false]{caption}%"listof" instead of "list" for backward compatibility
\@ifpackagelater{hyperref}{2009/12/09}
  {\captionsetup{compatibility=false}}%cf. http://groups.google.de/group/comp.text.tex/browse_thread/thread/db9310eb540fbbd8/42e30f3b7b3aa17a?lnk=raot
  {}
\DeclareCaptionLabelFormat{boxed}{%
  \kern0.05em{\color[rgb]{0.99,0.78,0.07}\rule{0.73em}{0.73em}}%
  \hspace*{0.67em}\bothIfFirst{#1}{~}#2}
\captionsetup{labelformat=boxed}
\captionsetup[table]{position=top}
\RequirePackage[figuresright]{rotating}
\caption@AtBeginDocument{\@ifpackageloaded{subfig}{\ClassError{lipics}{%
  Do not load the subfig package}{The more recent subcaption package is already loaded}}{}}
\RequirePackage{subcaption}
\def\titlerunning#1{\gdef\@titlerunning{{\let\footnote\@gobble\markboth{#1}{#1}}}}
\def\authorrunning#1{%
  \gdef\@authorrunning{\markright{\if!#1!\textcolor{red}{Author: Please fill in the \string\authorrunning\space macro}\else#1\fi}}}
\titlerunning{\@title}
\authorrunning{\textcolor{red}{Author: Please use the \string\authorrunning\space macro}}
\def\EventTitle#1{\gdef\@EventTitle{#1}}
\EventTitle{}
\def\EventLongTitle#1{\gdef\@EventLongTitle{#1}}
\EventLongTitle{}
\def\EventShortTitle#1{\gdef\@EventShortTitle{#1}}
\soulregister\EventShortTitle7
\EventShortTitle{}
\newcommand{\printEventShortTitle}{\@EventShortTitle}
\def\EventEditors#1{\gdef\@EventEditors{#1}}
\EventEditors{}
\def\EventNoEds#1{\gdef\@EventNoEds{#1}\xdef\@Eds{Editor\ifnum#1>1s\fi}}
\EventNoEds{1}
\def\EventLogo#1{\gdef\@EventLogo{#1}}
\EventLogo{}
\def\EventAcronym#1{\gdef\@EventAcronym{#1}}
\EventAcronym{}
\def\EventYear#1{\gdef\@EventYear{#1}}
\EventYear{}
\def\EventDate#1{\gdef\@EventDate{#1}}
\EventDate{}
\def\EventLocation#1{\gdef\@EventLocation{#1}}
\EventLocation{}
\def\SeriesVolume#1{\gdef\@SeriesVolume{#1}}
\SeriesVolume{}
\soulregister{\SeriesVolume}{7}
\newcommand{\printSeriesVolume}{\@SeriesVolume}
\def\ArticleNo#1{\gdef\@ArticleNo{#1}}
\ArticleNo{0}
\def\DOIPrefix#1{\gdef\@DOIPrefix{#1}}
\DOIPrefix{10.4230/LIPIcs}
\gdef\@DOI{\@DOIPrefix.\@EventAcronym.\@EventYear.\@ArticleNo}
\newcommand{\printDOI}{\@DOI}
\newcommand*\Copyright[2][]{%
  \def\@Copyright{%
    \def\@tempa{#1}\ifx\@tempa\@empty
      \ifx#2\@empty \else \textcopyright\ #2\\\fi
    \else
      \setbox\@tempboxa\hbox{\includegraphics[height=14\p@,clip]{cc-by-#1}}%
      \hspace*{\wd\@tempboxa}\enskip\ifx#2\@empty \else \textcopyright\ #2;\\\fi
      \href{https://creativecommons.org/licenses/by-#1/3.0/}{\smash{\unhbox\@tempboxa}}\enskip licensed under Creative Commons License \MakeUppercase{#1}\\
    \fi}}
\Copyright[]{\@empty}
\def\hideLIPIcs{\let\@hideLIPIcs\relax}
\def\keywords#1{\def\@keywords{#1}}
\let\@keywords\@empty
\def\keywordsHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Keywords and phrases\enskip}}
\RequirePackage{comment}
\excludecomment{CCSXML}
% inspired by https://tex.stackexchange.com/questions/12810/how-do-i-split-a-string
\global\newcommand\ccsdesc[2][100]{\@ccsdesc#1~#2~~\relax}
\usepackage{xstring}
\let\orig@ccsdesc\@ccsdesc
\let\@ccsdesc\@empty
\let\@ccsdescString\@empty
\gdef\@ccsdesc#1~#2~#3~{
	\ifx\@ccsdesc\orig@ccsdesc\let\@ccsdesc\@empty\fi
	\ifx!#3!
		\ifx\@ccsdescString\@empty
			\g@addto@macro\@ccsdescString{{#2}}
		\else
			\g@addto@macro\@ccsdescString{; {#2}}
		\fi
	\else
		\ifx\@ccsdescString\@empty
			\g@addto@macro\@ccsdescString{{#2} $\rightarrow$ {#3}}
		\else
			\g@addto@macro\@ccsdescString{; {#2} $\rightarrow$ {#3}}
		\fi
	\fi
\ccsdescEnd
}
\def\ccsdescEnd#1\relax{}
\def\subjclass#1{
  \ClassError{lipics}
    {\string\subjclass\space deprecated: Please enter subject classification in 1 or more ccsdesc macros}
    {Since 2019, \string\subjclass\space is obsolete in lipics.}}
\let\@subjclass\@empty
\newcommand{\printSubjclass}{
   \@\ifx\@ccsdescString\@empty
     \textcolor{red}{Editor: Please fill in 1 or more \string\ccsdesc\space macro}%
   \else
     \@ccsdescString
   \fi
}
\def\subjclassHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       2012 ACM Subject Classification\enskip}}
\def\doiHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Digital Object Identifier\enskip}}
\def\serieslogo#1{\gdef\@serieslogo{#1}}
\serieslogo{}
\def\category#1{\def\@category{#1}}
\let\@category\@empty
\def\categoryHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Category\enskip}}
\def\relatedversion#1{\def\@relatedversion{#1}}
\let\@relatedversion\@empty
\def\relatedversionHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Related Version\enskip}}
\def\supplement#1{\def\@supplement{#1}}
\let\@supplement\@empty
\def\supplementHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Supplement Material\enskip}}
\def\funding#1{\def\@funding{#1}}
\let\@funding\@empty
\def\fundingHeading{%
 \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                      Funding\enskip}}
\def\acknowledgements#1{\def\@acknowledgements{#1}}
\let\@acknowledgements\@empty
\def\acknowledgementsHeading{%
 \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                      Acknowledgements\enskip}}
\def\DatePublished#1{\gdef\@DatePublished{#1}}
\def\DatePublishedHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       Published\enskip}}
\let\@DatePublished\@empty
\newcommand{\printDatePublished}{
  \@\ifx\@DatePublished\@empty
     \textcolor{red}{Publication date will be entered by LIPIcs office.}%
   \else
     \@DatePublished
   \fi

}
\def\ISBN#1{\gdef\@ISBN{#1}}
\def\ISBNHeading{%
  \textcolor{darkgray}{\fontsize{9.5}{12.5}\sffamily\bfseries
                       ISBN\enskip}}
\let\@ISBN\@empty
\newcommand{\printISBN}{\@ISBN}
\def\cleardoublepage{%
  \clearpage\if@twoside\ifodd\c@page\else\hbox{}\thispagestyle{empty}\newpage\fi\fi}
\def\subtitle#1{\gdef\@subtitle{#1}}
\subtitle{\@EventShortTitle, \@EventDate, \@EventLocation}
%\def\@subtitle{\@latex@warning@no@line{No \noexpand\subtitle given}}

%\def\editor#1{\gdef\@editor{#1}}
%\def\@editor{\@latex@warning@no@line{No \noexpand\editor given}}

%\let\@editorsfortoc\@empty
%\let\@editorsforpdf\@empty
\let\orig@editor\@editor
\let\orig@editorLong\@editorLong
\newcount\c@editor
\def\@editornum{0}
\def\editor#1#2#3#4{%
  \ifx\@editor\orig@editor\let\@editor\@empty\fi
  \ifx\@editorLong\orig@editorLong\let\@editorLong\@empty\fi
  \g@addto@macro\@editor{#1\par\nobreak}
  \g@addto@macro\@editorLong{%
    \par\addvspace{0.5\baselineskip}%
    {\large\bfseries
     \if!#1!%
       \textcolor{red}{Editor: Please enter editor name}%
     \else
       #1%
       \if!#4!\else{ \href{#4}{\includegraphics[height=9\p@]{orcid}}}\fi
     \fi
     \par}\nobreak
	\def\and{\newline}
    \if!#2!\textcolor{red}{Author: Please enter affiliation as second parameter of the editor macro}\else#2\fi
    \if!#3!\else\\*\href{mailto:#3}{#3}\fi
    \par\nobreak}%
}
\newcommand{\printEditorLong}{\@editorLong}

\def\titlepagebottomline#1{\gdef\@titlepagebottomline{#1}}
\titlepagebottomline{LIPIcs -- Vol.~\@SeriesVolume{} -- \mbox{\@EventShortTitle{}} \qquad \qquad  www.dagstuhl.de/lipics}
%\def\@titlepagebottomline{\@latex@warning@no@line{No \noexpand\titlepagebottomline given}}
\newenvironment{publicationinfo}
 {\parindent\z@
  \null\vfill
  \thispagestyle{empty}%
  \small}
 {\par\break}
\def\ps@titlepage{%
    \let\@evenhead\@empty
    \let\@oddhead\@empty
    \def\@oddfoot{\hfuzz=48pt \hspace*{0.167\textwidth}%
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox[rgb]{0.99,0.78,0.07}
                                    {\@tempdima0.833\textwidth
                                     \advance\@tempdima\evensidemargin
                                     \advance\@tempdima1in 
									 \advance\@tempdima\hoffset
                                     \hb@xt@\@tempdima{%\hspace*{0.833\textwidth}%
                                       \textcolor{darkgray}{\normalsize\sffamily
                                       \bfseries\quad
                                       \expandafter\textsolittle
                                       \expandafter{\@titlepagebottomline}}%
                                     \strut\hss}}}}}
    \let\@evenfoot\@empty
    \let\@mkboth\markboth
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble}
\renewcommand\maketitle{\begin{titlepage}%
  \thispagestyle{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \parindent\z@
  \bgroup
    \leftskip0.167\textwidth
    \rightskip0.0415\textwidth\@plus1fill
    \null\vskip 60\p@
    \sffamily\bfseries
    {\huge\@title \par}%
    \vskip 4.5em%
    {\large\@subtitle\par}%
    \vskip 9em%
    {\Large\mdseries Edited by\\ \huge\@editor\par}%
    \vfill
    \rightskip\z@
    \includegraphics[width=10em]{lipics-logo-bw}%
    \hfill
    \ifx\@serieslogo\@empty
      \nobreakspace
    \else
      \includegraphics[width=10em]{\@serieslogo}%
    \fi
    \par
  \egroup
  \break
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@editor\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\editor\empty
  \global\let\date\relax
  \global\let\and\relax}
\newenvironment{dedication}
  {\null\vskip\z@\@plus1fill\thispagestyle{empty}\raggedleft\large\noindent}
  {\vskip\z@\@plus2fill\null\break\null\thispagestyle{empty}}
\def\inputtocentry#1{\makeatletter\@input{#1.vtc}\makeatother}
\newcommand{\xandlist}[4]{\@andlista{{#1}{#2}{#3}}#4\and\and}
\def\@andlista#1#2\and#3\and{\@andlistc{#2}\@ifnotempty{#3}{%
  \@andlistb#1{#3}}}
\def\@andlistb#1#2#3#4#5\and{%
  \@ifempty{#5}{%
    \@andlistc{#2#4}%
  }{%
    \@andlistc{#1#4}\@andlistb{#1}{#3}{#3}{#5}%
  }}
\let\@andlistc\@iden
\newcommand{\nxandlist}[4]{%
  \def\@andlistc##1{\toks@\@xp{\the\toks@##1}}%
  \toks@{\toks@\@emptytoks \@andlista{{#1}{#2}{#3}}}%
  \the\@xp\toks@#4\and\and
  \edef#4{\the\toks@}%
  \let\@andlistc\@iden}
\def\@@and{and}
\newcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{} \@@and~}{\unskip, \@@and~}}
\def\and{\unskip{ }\@@and{ }\ignorespaces}
\def\@tocpagenum#1{\hss{\mdseries #1}}
\def\@authorfont{\itshape}
\def\@andfont{\upshape}
\newdimen\@chaptersink  \@chaptersink=8pc
\newif\if@firstcontitem  \@firstcontitemtrue
\newenvironment{contentslist}{%
  \let\secdef\@gobbletwo \chapter
  \typeout{\contentsname}%
  \@xp\chaptermark\@xp{\contentsname}%
  \@xp\markright\@xp{\contentsname}%
  \@makechapterhead{\contentsname}\@afterheading
  \parskip\z@skip
  \@firstcontitemtrue
  \@contentsdefs
  \frenchspacing \raggedright
  \hyphenpenalty\@M \exhyphenpenalty\@M
}{%
  \@wrapcontitem
  \global\@nobreakfalse % \endgroup
  \newpage
}
\newcommand{\contitem}{%
  \if@firstcontitem
    \global\@firstcontitemfalse
  \else
    \@wrapcontitem
  \fi
  \let\authors\@empty
  \let\@title\@empty
  \let\@contlabel\@empty
  \let\@page\@empty
  \bgroup
}
\newdimen\@clabelwidth  \@clabelwidth=\z@
\newif\if@clabelsleft  \@clabelsleftfalse
\newcommand{\widestclabel}[2][r]{%
  \ifx l#1\@clabelslefttrue \fi
  \setbox0\hbox{#2\kern.5em}%
  \global\@clabelwidth=\wd0
}
\def\@pnumwidth{5em}
\newcommand{\@wrapcontitem}{%
  \if@csection \global\@csectionfalse
  \else \addvspace{6pt}%
  \fi
  \parindent\z@ \leftskip\z@
  \rightskip\@pnumwidth plus6em \parfillskip-\@pnumwidth
  \ifx\@empty\authors
    \@title\hfill\qquad\hbox to\@pnumwidth{\@tocpagenum{\@page}}\par
  \else
    \@title\hfill\null\par
    \nobreak
    \raggedright
    \leftskip 1.5em\relax
    \ifx\@empty\@contlabel
    \else
      \advance\leftskip\@clabelwidth
    \fi
    \advance\parfillskip\leftskip
    \andify\authors
    {\@authorfont\authors}\nobreak
    \hfil\null\penalty\z@\enskip\dotfill
    \enskip\hbox to\@pnumwidth{\@tocpagenum{\@page}}\par
  \fi
  \egroup
  \allowbreak
}
\let\@contlabel\@empty
\newif\if@csection  \@csectionfalse
\def\@contentsdefs{%
  \def\part##1{%
    \if@firstcontitem
    \else \@wrapcontitem \global\@firstcontitemtrue
    \fi
    \@startsection{part}{1}%
      \z@{1.2\baselineskip\@plus\baselineskip}{.5\baselineskip}%
      {\normalfont\bfseries\Large}*{##1}%
   \@xp\markright\@xp{\contentsname}%
   }%
  \def\contlabel##1{\gdef\@contlabel{##1}}%
  \def\title##1{\gdef\@title{##1}}%
  \def\lecture##1{\gdef\@title{\textbf{##1}}}%
  \renewcommand{\andify}{%
     \nxandlist{\unskip, }{\unskip{} {\@andfont and}~}%
       {\unskip, \penalty-1{\@andfont and}~}}%
  \def\author##1{%
    \ifx\@empty\authors
      \gdef\authors{##1}%
    \else
      \g@addto@macro\authors{\and##1}%
    \fi
  }%
  \def\@page{}%
  \def\page##1{\gdef\@page{##1}}%
  \def\section##1{%
    \global\@csectiontrue
    \gdef\@title{\leftskip1.5em##1}%
  }%
}
\def\chaptermark#1{\markboth{#1}{#1}}%
\def\@makechapterhead#1{%
  {\parindent\z@ \raggedright
   \hangindent12\p@ \advance\hangindent1em
   \textcolor[rgb]{0.99,0.78,0.07}{\rule{12\p@}{12\p@}}\quad
   \LARGE\sffamily\bfseries\mathversion{bold}#1\par}%
  \vskip2\baselineskip}
\let\@makeschapterhead\@makechapterhead
\def\twocolchapter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}\global\@topnum\z@
  \@afterindenttrue \secdef\@twocolchapter\@stwocolchapter}
\def\@twocolchapter[#1]#2{%
  \chaptermark{#1}%
  \markright{#1}%
  \twocolumn[\@makechapterhead{#2}]}
\def\@stwocolchapter#1{%
  \global\topskip\@chaptersink\relax
  \chaptermark{#1}%
  \twocolumn[%
    \if@articles
      \Large
    \else
      \fontsize{\@xivpt}{18}%
    \fi
    \vskip\topskip\vskip-\baselineskip\hbox{}% adjust top space
    \bfseries\centering
    #1\par]%
  \global\topskip 34\p@ }
\newif\if@firstparticipant
\newenvironment{participants}{%
  \let\@secnumber\@empty
  \global\@firstparticipanttrue
  \let\chapter=\twocolchapter
  \parindent=\z@
  \hyphenpenalty=\@M
  \raggedright
  \interlinepenalty=\@M
}{%
  \onecolumn
}
\def\participant{%
  \if@firstparticipant
    \global\@firstparticipantfalse
    \def\\{\hfil\penalty-\@M}%
  \else
    \par
    \addvspace{6pt plus.5pt}%
  \fi
}
\endinput
%%
%% End of file `lipicsmaster-v2019.cls'.
