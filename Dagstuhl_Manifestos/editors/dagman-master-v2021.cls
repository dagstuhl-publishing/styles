%%
%% This is file `dagman-master-v2021.cls'.
%% 
%% -----------------------------------------------------------------
%% Author:     Dagtuhl Publishing & le-tex publishing services
%% 
%% This file is part of the dagman package for preparing
%% reports for the "Dagstuhl Manifestos" journal.
%% 
%% Copyright (C) 2020 Schloss Dagstuhl
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
\ProvidesClass{dagman-master-v2021}
[2021/01/04 v3.1.0 Dagstuhl Manifestos - Issue front matter]
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
\def\dagrep@opterrshort{Option  "\CurrentOption" not supported}
\def\dagrep@opterrlong{The option "\CurrentOption" from article.cls is not supported by dagrep-master.cls.}
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
\DeclareOption{pdfa}{\let\pdfa\relax}
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{article}
                        \advance\hoffset-2.95mm
                        \advance\voffset8.8mm}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[twoside,fleqn]{article}
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
    \def\@evenhead{\large\sffamily\bfseries\llap{\hbox to0.5\oddsidemargin{\thepage\hss}}\leftmark\hfil}%
    \def\@oddhead{\large\sffamily\bfseries\rightmark\hfil\rlap{\hbox to0.5\oddsidemargin{\hss\thepage}}}%
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \let\@mkboth\markboth
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble}
\pagestyle{headings}
\def\bottomline{%
 \hspace*{-0.074\textwidth}% 0.167
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox[rgb]{0.99,0.78,0.07}
                                    {\@tempdima1.0\textwidth\advance\@tempdima\evensidemargin
                                     \advance\@tempdima1in \advance\@tempdima\hoffset
                                     \hb@xt@\@tempdima{%\hspace*{0.833\textwidth}%
                                       \textcolor{darkgray}{\normalsize\sffamily\bfseries\quad
                                       \expandafter\textsolittle\expandafter{\@titlepagebottomline}}\strut\hss}}}}}
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
\renewcommand\labelenumi{\textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}\theenumi.}}
\renewcommand\labelenumii{\textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}\theenumii.}}
\renewcommand\labelenumiii{\textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}\theenumiii.}}
\renewcommand\labelenumiv{\textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}\theenumiv.}}
\renewcommand\labelitemi{%
  \textcolor[rgb]{0.6,0.6,0.61}{\ifnum\@listdepth=\@ne\rule{0.67em}{0.33em}\else\rule{0.45em}{0.225em}\fi}}
\renewcommand\labelitemii{\textcolor[rgb]{0.6,0.6,0.61}{\rule{0.45em}{0.225em}}}
\renewcommand\labelitemiii{\textcolor[rgb]{0.6,0.6,0.61}{\sffamily\bfseries\textasteriskcentered}}
\renewcommand\labelitemiv{\textcolor[rgb]{0.6,0.6,0.61}{\sffamily\bfseries\textperiodcentered}}
\renewenvironment{description}
               {\list{}{\advance\partopsep\topsep\topsep\z@\@plus\p@
                        \labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\ifnum\@listdepth=\@ne\global\@nobotseplisttrue\fi\endlist}
\renewcommand*\descriptionlabel[1]{\hspace\labelsep
                                \textcolor{darkgray}{\sffamily\bfseries\mathversion{bold}#1}}
\renewcommand\footnoterule{%
  \kern-8\p@
  {\color[rgb]{0.60,0.60,0.61}\hrule\@width40mm\@height1\p@}%
  \kern6.6\p@}
\renewcommand\@makefntext[1]{%
    \parindent\z@\hangindent1em
    \leavevmode
    \hb@xt@1em{\@makefnmark\hss}#1}
\usepackage[utf8]{inputenc}
\IfFileExists{lmodern.sty}{\RequirePackage{lmodern}}{}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage[mathscr]{eucal}
\RequirePackage{amssymb}
\RequirePackage{soul}
\sodef\textsolittle{}{.12em}{.5em\@plus.08em\@minus.06em}%
        {.4em\@plus.275em\@minus.183em}
\RequirePackage{color}
\definecolor{darkgray}{rgb}{0.31,0.31,0.33}
\RequirePackage{babel}
\RequirePackage[tbtags,fleqn]{amsmath}
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
\let\usehyperxmp\@empty%
\ifx\pdfa\relax%
  \IfFileExists{hyperxmp.sty}{%
    \RequirePackage{hyperxmp}%
    \@ifpackagelater{hyperxmp}{2019/04/05}{%
      \let\usehyperxmp\relax%
    }{%
      \ClassWarning{Package hyperxmp outdated}{You are using an outdated version of the package hyperxmp. Please update!}%
    }}{}%
\fi%
\IfFileExists{totpages.sty}{
  \RequirePackage{totpages}
}{
	\ClassWarning{Package totpages not installed}{Please install package totpages}
	\newcounter{TotPages}
	\setcounter{TotPages}{99}
}
\ifx\usehyperxmp\relax%
  \RequirePackage[pdfa,unicode]{hyperref}%
\else%
  \RequirePackage[unicode]{hyperref}%
\fi%

\let\C\relax%
\let\G\relax%
\let\F\relax%
\let\U\relax%
\pdfstringdefDisableCommands{%
	\let\thanks\@gobble%
	\let\footnote\@gobble%
	\def\footnotemark{}%
	\def\cs#1{\textbackslash #1}%
	\let\normalfont\@empty%
	\let\scshape\@empty%
	\def\and{and }%
	\def\,{ }%
	\def\textrightarrow{ -> }%
	\let\mathsf\@empty%
}%
\hypersetup{
	breaklinks=true,
	pdfencoding=unicode,
	bookmarksnumbered,
	pdfborder={0 0 0},
	pdfauthor={ },
	pdftitle={ }
}%
\AtBeginDocument{
\ifx\usehyperxmp\relax
\hypersetup{
pdftitle={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear},
pdfauthor={Schloss Dagstuhl -- Leibniz-Zentrum für Informatik},
pdfkeywords={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear},
pdfproducer={LaTeX with dagman-master-v2021.cls},
pdfsubject={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear},
pdfcopyright = {Copyright (C) Schloss Dagstuhl -- Leibniz-Zentrum für Informatik; licensed under Creative Commons License CC-BY 4.0},
%pdflang={en},
pdfmetalang={en},
pdfpublisher={Schloss Dagstuhl -- Leibniz-Zentrum für Informatik, Dagstuhl Publishing, Germany},
pdflicenseurl={https://creativecommons.org/licenses/by/4.0/},
pdfpubtype={Dagstuhl Manifestos},
pdfvolumenum={\@ManifestosVolume},
pdfpagerange={\thepage-\theTotPages},
pdfdoi={\@DOI},
pdfapart=3,
pdfaconformance=B
}
\else%
\hypersetup{
pdftitle={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear},
pdfauthor={Schloss Dagstuhl -- Leibniz-Zentrum für Informatik},
pdfkeywords={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear},
pdfcreator={LaTeX with dagman-master-v2021.cls},
pdfsubject={Dagstuhl Manifestos, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{}, \@ManifestosMonthYear; Copyright (C) Schloss Dagstuhl -- Leibniz-Zentrum für Informatik; licensed under Creative Commons License CC-BY 4.0},
}%
\fi	%
}
\ifx\usehyperxmp\relax
\pdfobjcompresslevel=0
\pdfinclusioncopyfonts=1
\IfFileExists{colorprofiles.tex}{
\RequirePackage{colorprofiles}%
\IfFileExists{sRGB.icc}{
\immediate\pdfobj stream attr{/N 3} file{sRGB.icc}
\pdfcatalog{%
/OutputIntents [
<<
/Type /OutputIntent
/S /GTS_PDFA1
/DestOutputProfile \the\pdflastobj\space 0 R
/OutputConditionIdentifier (sRGB)
/Info (sRGB)
>>
]
}}{}
}{\ClassWarning{Package colorprofiles not installed}{Please install package colorprofiles}}
\fi
\RequirePackage[labelsep=space,singlelinecheck=false,%
  font={up,small},labelfont={sf,bf},%
  listof=false]{caption}%"listof" instead of "list" for backward compatibility
\@ifpackagelater{hyperref}{2009/12/09}
  {\captionsetup{compatibility=false}}%cf. http://groups.google.de/group/comp.text.tex/browse_thread/thread/db9310eb540fbbd8/42e30f3b7b3aa17a?lnk=raot
  {}
\DeclareCaptionLabelFormat{boxed}{\kern0.05em{\color[rgb]{0.99,0.78,0.07}\rule{0.73em}{0.73em}}\hspace*{0.67em}\bothIfFirst{#1}{~}#2}
\captionsetup{labelformat=boxed}
\captionsetup[table]{position=top}
\captionsetup[lstlisting]{position=top}
\RequirePackage[figuresright]{rotating}
\RequirePackage{subfig}
\def\cleardoublepage{%
  \clearpage\if@twoside\ifodd\c@page\else\hbox{}\thispagestyle{empty}\newpage\fi\fi}
\def\ManifestosVolume#1{\gdef\@ManifestosVolume{#1}}
\ManifestosVolume{}
\def\ManifestosIssue#1{\gdef\@ManifestosIssue{#1}}
\ManifestosIssue{}
\def\ManifestosMonthYear#1{\gdef\@ManifestosMonthYear{#1}}
\ManifestosMonthYear{}
\def\DOIPrefix#1{\gdef\@DOIPrefix{#1}}
\DOIPrefix{10.4230/DagMan}
\def\DOI#1{\gdef\@DOI{#1}}
\DOI{\@DOIPrefix.\@ManifestosVolume.\@ManifestosIssue.i}		
\newcommand{\printDOI}{
     	\ifx\@ReportsVolume\@empty
     		\textcolor{blue}{\@DOIPrefix.VOL.ISS.i}%
     	\else
     		\ifx\@ReportsIssue\@empty
     			\textcolor{blue}{\@DOIPrefix.VOL.ISS.i}%
     		\else
     			\href{https://doi.org/\@DOI}{\@DOI}%
     		\fi
     	\fi
}%
\def\subtitle#1{\gdef\@subtitle{#1}}
\subtitle{Volume~\@ManifestosVolume, Issue~\@ManifestosIssue, \@ManifestosMonthYear}
\def\titlepagebottomline#1{\gdef\@titlepagebottomline{#1}}
\titlepagebottomline{Dagstuhl Reports, Vol.~\@ManifestosVolume{}, Issue~\@ManifestosIssue{} \qquad \qquad \qquad \qquad \qquad  ISSN~2193-2433}
\newenvironment{publicationinfo}
 {\parindent\z@
  \null\vfill
  \thispagestyle{empty}%
  \small}
 {\par}
\def\ps@titlepage{%
    \let\@evenhead\@empty
    \let\@oddhead\@empty
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \let\@mkboth\markboth
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble}
\renewcommand\maketitle{%
 %\begin{titlepage}%
 \parbox{\textwidth}{
  \thispagestyle{titlepage}%
  \parindent\z@
  %\bgroup
   %\leftskip0.167\textwidth
    \leftskip-0.035\textwidth
    %\rightskip0.0415\textwidth\@plus1fill % orig: 0.167
    \null\vskip 60\p@
    \sffamily\bfseries
    {\Huge\hspace*{-0.015\textwidth}\@title \par}%
    \vskip 4.5em%
    {\Large\textcolor{darkgray}{\@subtitle}\par}%
    \vskip 9.0em%
  %\egroup
  }
  %\end{titlepage}%
}
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
  \@firstcontitemtrue
  \@contentsdefs
  \frenchspacing \raggedright
  \hyphenpenalty\@M \exhyphenpenalty\@M
}{%
  \@wrapcontitem
  \global\@nobreakfalse % \endgroup
  % \newpage
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
\endinput
%%
%% End of file `dagrep-master-v2021.cls'.
