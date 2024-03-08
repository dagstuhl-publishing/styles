%%
%% This is file `litesmaster-v2021.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dagpub.dtx  (with options: `litesmaster')
%% 
%% -----------------------------------------------------------------
%% Author:    Dagstuhl Publishing
%% 
%% This file is part of the style package of Dagstuhl
%% Publishing for preparing articles for its different
%% series.
%% 
%%       Copyright (C) 2010--2023
%%        Schloss Dagstuhl
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is
%% Schloss Dagstuhl (publishing@dagstuhl.de).
%% -----------------------------------------------------------------
\ProvidesClass{litesmaster-v2021}
[2023/12/05 v3.2.1
LITES issue front matters]

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
\let\@subtitle\@empty
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\subtitleseperator{: }
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
            \colorbox{dagpubYellow}{\kern0.15em\@svsec\kern0.15em}\quad
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
\def\@biblabel#1{\textcolor{dagpubGray}{\sffamily\bfseries#1}}
\def\three@digits#1{\ifnum#1>99\else\ifnum#1>9 0\else00\fi\fi\number#1}
\def\EventLogoHeight{25}
\def\copyrightline{%
  \ifx\@hideDagpub\@undefined
    \ifx\@EventLogo\@empty
    \ifx\@serieslogo\@empty
    \else
      \setbox\@tempboxa\hbox{\includegraphics[height=\EventLogoHeight\p@]{\@serieslogo}}%
      \rlap{\hspace\textwidth\hspace{-\wd\@tempboxa}\hspace{\z@}\vtop to\z@{\vskip-0mm\unhbox\@tempboxa\vss}}%
    \fi
    \else
      \setbox\@tempboxa\hbox{%
        \ifx\@EventLogoURL\@empty%
          \includegraphics[height=\EventLogoHeight\p@]{\@EventLogo}%
        \else%
          \href{\@EventLogoURL}{\includegraphics[height=\EventLogoHeight\p@]{\@EventLogo}}%
        \fi%
      }\rlap{\hspace\textwidth\hspace{-\wd\@tempboxa}\hspace{\z@}%
        \vtop to\z@{\vskip-0mm\unhbox\@tempboxa\vss}}%
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
    \href{\@DagPubSeriesURL}{\textit{\@DagPubSeriesName}},\space Vol.\nobreakspace\@SeriesVolume,\space Issue\nobreakspace\@SeriesIssue,\space Article\nobreakspace{}No.\nobreakspace\@ArticleNo,\space pp.\nobreakspace{}\@ArticleNo:\thepage--\@ArticleNo:\getpagerefnumber{TotPages}\\
    \ifx\@SpecialIssue\@empty\else Special Issue: \@SpecialIssue.\\\fi
    \ifx\@SectionAreaEditor\@empty\else\@SectionAreaEds: \@SectionAreaEditor\\\fi
    \setbox\@tempboxa\hbox{\IfFileExists{\@DagPubSeriesLogo.pdf}{\includegraphics[height=14\p@,trim=0 15 0 0]{\@DagPubSeriesLogo}}{\includegraphics[height=14\p@, width=62pt]{example-image-plain}}}%
    \hspace*{\wd\@tempboxa}\enskip
      \href{\@DagPubSeriesURL}%
           {\@DagPubSeriesName}\\
      \smash{\unhbox\@tempboxa}\enskip
      \href{https://www.dagstuhl.de}%
           {Schloss Dagstuhl -- Leibniz-Zentrum f{\"u}r Informatik, Dagstuhl Publishing, Germany}}%
  \fi}
\def\ps@plain{\let\@mkboth\@gobbletwo
  \let\@oddhead\@empty
  \let\@evenhead\@empty
  \let\@evenfoot\copyrightline
  \let\@oddfoot\copyrightline}
\def\dagpub@opterrshort{Option  "\CurrentOption" not supported}
\def\dagpub@opterrlong{The option "\CurrentOption" from book.cls is not supported by litesmaster.cls.}
\DeclareOption{a5paper}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{b5paper}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{legalpaper}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{executivepaper}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{landscape}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{10pt}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{11pt}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{12pt}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{oneside}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{twoside}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{titlepage}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{notitlepage}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{onecolumn}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{twocolumn}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{fleqn}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{openbib}{\@latexerr{\dagpub@opterrshort}{\dagpub@opterrlong}}
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{book}
                        \advance\hoffset-2.95mm
                        \advance\voffset8.8mm}
\DeclareOption{editorcolumns}{\let\editorcolumns\relax}
\DeclareOption{pdfa}{\let\pdfa\relax}
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
\setlength\textwidth{148mm}
\setlength\textheight{222mm}
\setlength\oddsidemargin{28mm}
\setlength\evensidemargin{34mm}
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
                   \llap{\hbox to0.5\oddsidemargin{  \ifx\@hideDagpub\@undefined\ifx\@ArticleNo\@empty\textcolor{red}{XX}\else\@ArticleNo\fi:\fi\thepage\hss}}\leftmark\hfil}%
    \def\@oddhead{\large\sffamily\bfseries\rightmark\hfil
                  \rlap{\hbox to0.5\oddsidemargin{\hss  \ifx\@hideDagpub\@undefined\ifx\@ArticleNo\@empty\textcolor{red}{XX}\else\@ArticleNo\fi:\fi\thepage}}}%
    \def\@oddfoot{\hfil
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox{dagpubYellow}
                                    {\@tempdima\evensidemargin
                                     \advance\@tempdima1in
                                     \advance\@tempdima\hoffset
                                     \hb@xt@\@tempdima{%
                                       \ifx\@hideDagpub\@undefined
                                         \textcolor{dagpubGray}{\normalsize\sffamily
                                         \bfseries\quad
                                         \expandafter\textsolittle
                                         \expandafter{\@EventShortTitle}}%
                                       \fi
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
\newcommand{\proofsubparagraph}{\@startsection{subparagraph}{5}{\z@}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\color{dagpubGray}\sffamily\normalsize\bfseries}}
\setlength\leftmargini  \parindent
\setlength\leftmarginii {1.2em}
\setlength\leftmarginiii{1.2em}
\setlength\leftmarginiv {1.2em}
\setlength\leftmarginv  {1.2em}
\setlength\leftmarginvi {1.2em}
\renewcommand\labelenumi{%
  \textcolor{dagpubGray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumi.}}
\renewcommand\labelenumii{%
  \textcolor{dagpubGray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumii.}}
\renewcommand\labelenumiii{%
  \textcolor{dagpubGray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumiii.}}
\renewcommand\labelenumiv{%
  \textcolor{dagpubGray}{\sffamily\bfseries\upshape\mathversion{bold}\theenumiv.}}
\renewcommand\labelitemi{%
  \textcolor{dagpubBulletGray}{\ifnum\@listdepth=\@ne
                                  \rule{0.67em}{0.33em}%
                                \else
                                  \rule{0.45em}{0.225em}%
                                \fi}}
\renewcommand\labelitemii{%
  \textcolor{dagpubBulletGray}{\rule{0.45em}{0.225em}}}
\renewcommand\labelitemiii{%
  \textcolor{dagpubBulletGray}{\sffamily\bfseries\textasteriskcentered}}
\renewcommand\labelitemiv{%
  \textcolor{dagpubBulletGray}{\sffamily\bfseries\textperiodcentered}}
\renewenvironment{description}
               {\list{}{\advance\partopsep\topsep\topsep\z@\@plus\p@
                        \labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\ifnum\@listdepth=\@ne\global\@nobotseplisttrue\fi\endlist}
\renewcommand*\descriptionlabel[1]{%
  \hspace\labelsep\textcolor{dagpubGray}{\sffamily\bfseries\mathversion{bold}#1}}
\def\topmattervskip{0.2}
\RequirePackage{mdframed}
\newenvironment{abstract}{%
  \vskip\bigskipamount
  \ifLineNumbers\nolinenumbers\let\linno@n\relax\fi
  \multicolsep\z@
  \columnsep\parindent
  \begin{multicols}{2}%
    [\noindent
    \rlap{\color{dagpubLineGray}\vrule\@width\textwidth\@height1\p@}%
    {\hspace*{4.5mm}\fboxsep1.5mm\colorbox{white}{\raisebox{-0.4ex}{%
    \large\selectfont\sffamily\bfseries\abstractname}}}%
    \vskip3\p@]%
  \fontsize{9}{12}\selectfont
  \noindent\ignorespaces}
  {%
  \end{multicols}%
  \vskip0.5\baselineskip\noindent
  \begin{mdframed}[backgroundcolor=dagpubLightGray,linewidth=0,innertopmargin=5,innerleftmargin=5, innerrightmargin=5, innerbottommargin=5, skipabove=0, skipbelow=0]
      \fontsize{9}{12}\selectfont
  \vskip\topmattervskip\baselineskip\noindent
   \subjclassHeading
   \ifx\@ccsdescString\@empty
     \textcolor{red}{Author: Please fill in 1 or more \string\ccsdesc\space macro}%
   \else
     \@ccsdescString
   \fi
   \vskip\topmattervskip\baselineskip
   \noindent\keywordsHeading
   \ifx\@keywords\@empty
     \textcolor{red}{Author: Please fill in \string\keywords\space macro}%
   \else
     \@keywords
   \fi
   \ifx\@hideDagpub\@undefined
     \ifx\@DOIPrefix\@empty\else
       \vskip\topmattervskip\baselineskip\noindent
       \doiHeading\href{https://doi.org/\@dagpubdoi}{\@dagpubdoi}%
     \fi
   \fi
   \ifx\@category\@empty\else
     \vskip\topmattervskip\baselineskip\noindent
     \categoryHeading\@category
   \fi
   \ifx\@relatedversion\@empty\else
     \vskip\topmattervskip\baselineskip\noindent
     \relatedversionHeading\ifx\authoranonymous\relax\textcolor{red}{Anonymous related version(s)}\else\@relatedversion\fi
   \fi
   \ifx\@supplement\@empty\else
     \vskip\topmattervskip\baselineskip\noindent
     \supplementHeading\ifx\authoranonymous\relax\textcolor{red}{Anonymous supplementary material}\else\@supplement\fi
   \fi
   \ifx\@funding\@empty\else
     \vskip\topmattervskip\baselineskip\noindent
     \fundingHeading\ifx\authoranonymous\relax\textcolor{red}{Anonymous funding}\else\@funding\fi
   \fi
   \ifx\@acknowledgements\@empty\else
     \vskip\topmattervskip\baselineskip\noindent
     \acknowledgementsHeading\ifx\authoranonymous\relax\textcolor{red}{Anonymous acknowledgements} \else\@acknowledgements\fi
   \fi
  \vskip\topmattervskip\baselineskip\noindent
  \ifx\@hideDateSubmission\@undefined
    \DateSubmissionHeading
    \ifx\@DateSubmission\@empty
      \textcolor{blue}{To be completed by Dagstuhl editorial office}
    \else
      \@DateSubmission\space
    \fi
  \fi
  \ifx\@hideDateAcceptance\@undefined
    \DateAcceptanceHeading
    \ifx\@DateAcceptance\@empty
      \textcolor{blue}{To be completed by Dagstuhl editorial office}
    \else
      \@DateAcceptance\space
    \fi
  \fi
    \DatePublishedHeading
  \ifx\@DatePublished\@empty
    \textcolor{blue}{To be completed by Dagstuhl editorial office}
  \else
    \@DatePublished\space
  \fi
  \ifx\@SectionAreaEditor\@empty\else
    \vskip\topmattervskip\baselineskip\noindent
    \SectionAreaEditorHeading\@SectionAreaEditor
  \fi
  \ifx\@SpecialIssue\@empty\else
    \vskip\topmattervskip\baselineskip\noindent
    \SpecialIssueHeading\@SpecialIssue
  \fi
   \ifx\@additionalMetadata\@empty\else
     \@additionalMetadata
   \fi
  \vskip0.3\baselineskip\noindent
     \par
   \end{mdframed}
   \ifx\linno@n\relax\linenumbers\fi
  \protected@write\@auxout{}{\string\gdef\string\@pageNumberEndAbstract{\thepage}}%
}% end abstract
\renewenvironment{thebibliography}[1]
  {\if@noskipsec \leavevmode \fi
   \par
   \ifLineNumbers\nolinenumbers\let\linno@n\relax\fi
   \@tempskipa-3.5ex \@plus -1ex \@minus -.2ex\relax
   \@afterindenttrue
   \@tempskipa -\@tempskipa \@afterindentfalse
   \if@nobreak
     \everypar{}%
   \else
     \addpenalty\@secpenalty\addvspace\@tempskipa
   \fi
   \columnsep\parindent
   \begin{multicols}{2}%
     [\noindent
      \rlap{\color{dagpubLineGray}\vrule\@width\textwidth\@height1\p@}%
      {\hspace*{4.5mm}\fboxsep1.5mm\colorbox{white}{\raisebox{-0.4ex}{%
      \normalsize\sffamily\bfseries\refname}}}%
      \@xsect{1ex \@plus.2ex}%
     \vspace{-\multicolsep}]%
     \list{\@biblabel{\@arabic\c@enumiv}}%
        {\leftmargin7mm
         \labelsep\leftmargin
         \settowidth\labelwidth{\@biblabel{#1}}%
         \advance\labelsep-\labelwidth
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
     \fontsize{8}{9.5}\selectfont
   \sloppy
   \clubpenalty10000
   \@clubpenalty \clubpenalty
   \widowpenalty10000%
   \sfcode`\.\@m\protected@write\@auxout{}{\string\gdef\string\@pageNumberStartBibliography{\thepage}}}
  {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
   \protected@write\@auxout{}{\string\gdef\string\@pageNumberEndBibliography{\thepage}}%
   \endlist
  \end{multicols}%
  \ifx\linno@n\relax\linenumbers\fi
   }
%%%%%biblatex support%%%%%
\AtBeginDocument{%
\@ifpackageloaded{biblatex}{
\ExecuteBibliographyOptions{sorting=nty, maxnames=99, minnames=1}
\DeclareFieldFormat[article,inbook,incollection,inproceedings,patent,thesis,unpublished]{citetitle}{#1\isdot}
\DeclareFieldFormat[article,inbook,incollection,inproceedings,patent,thesis,unpublished]{title}{#1\isdot}
\renewbibmacro{in:}{}
\newcommand*{\volnumdelim}{\adddot}
\renewbibmacro*{volume+number+eid}{%
  \printfield{volume}%
  \setunit*{\volnumdelim}%
  \printfield{number}%
  \setunit{\addcomma\space}%
  \printfield{eid}}
\renewcommand*{\volnumdelim}{}
\DeclareFieldFormat[article, periodical]{number}{\mkbibparens{#1}}
\newcommand*{\jourdatedelim}{\addcomma\space}
\newcommand*{\jourserdelim}{\addcomma\space}
\newcommand*{\datevolnumdelim}{\newunitpunct}
\renewbibmacro*{journal+issuetitle}{%
  \usebibmacro{journal}%
  \setunit*{\jourdatedelim}%
  \iffieldundef{series}
    {}
    {\setunit*{\jourserdelim}%
     \printfield{series}%
     \setunit{\jourdatedelim}}%
  \usebibmacro{date}%
  \setunit{\datevolnumdelim}%
  \usebibmacro{volume+number+eid}%
  \setunit{\addcolon\space}%
  \usebibmacro{issue}%
  \newunit}
\renewcommand*{\bibpagespunct}{%
  \ifentrytype{article}
    {\addcolon}
    {\addcomma}%
  \space
}
\DefineBibliographyStrings{english}{
  pages = {p\adddot},
}
\defbibheading{bibliography}{%
\if@noskipsec \leavevmode \fi
   \par
   \@tempskipa-3.5ex \@plus -1ex \@minus -.2ex\relax
   \@afterindenttrue
   \@tempskipa -\@tempskipa \@afterindentfalse
   \if@nobreak
     \everypar{}%
   \else
     \addpenalty\@secpenalty\addvspace\@tempskipa
   \fi
}
\defbibenvironment{bibliography}{%
   \columnsep\parindent
   \begin{multicols}{2}%
     [\noindent
      \rlap{\color{dagpubLineGray}\vrule\@width\textwidth\@height1\p@}%
      {\hspace*{4.5mm}\fboxsep1.5mm\colorbox{white}{\raisebox{-0.4ex}{%
      \normalsize\sffamily\bfseries\refname}}}%
      \@xsect{1ex \@plus.2ex}%
     \vspace{-\multicolsep}]%
     \list{\@biblabel{\@arabic\c@enumiv}}%
       {\setlength{\labelwidth}{\labelnumberwidth}%
       \setlength{\leftmargin}{6mm}%
       \setlength{\labelsep}{6mm}%
       \advance\labelsep-\labelwidth
       \setlength{\itemsep}{\bibitemsep}%
       \setlength{\parsep}{\bibparsep}%
       \usecounter{enumiv}%
       \let\p@enumiv\@empty
       \renewcommand\theenumiv{\@arabic\c@enumiv}}%
     \fontsize{8}{9.5}\selectfont
   \sloppy
   \clubpenalty10000
   \@clubpenalty \clubpenalty
   \widowpenalty10000%
   \sfcode`\.\@m\protected@write\@auxout{}{\string\gdef\string\@pageNumberStartBibliography{\thepage}}}
  {\protected@write\@auxout{}{\string\gdef\string\@pageNumberEndBibliography{\thepage}}%
   \endlist
  \end{multicols}%
  \ifx\linno@n\relax\linenumbers\fi
   }
{\item}}{}
}%
\g@addto@macro\appendix{\immediate\write\@auxout{\string\gdef\string\@pageNumberStartAppendix{\thepage}}}%
\renewcommand\footnoterule{%
  \kern-8\p@
  {\color{dagpubBulletGray}\hrule\@width40mm\@height1\p@}%
  \kern6.6\p@}
\renewcommand\@makefntext[1]{%
    \parindent\z@\hangindent1em
    \leavevmode
    \hb@xt@1em{\@makefnmark\hss}#1}
\usepackage{microtype}
\usepackage{wrapfig}
\usepackage[utf8]{inputenc}
\ifx\pdfa\relax%
  \IfFileExists{glyphtounicode.tex}{
    \input glyphtounicode
    \pdfgentounicode=1
  }{}%
\fi
\IfFileExists{lmodern.sty}{\RequirePackage{lmodern}}{}
\IfFileExists{fontawesome5.sty}{%
\RequirePackage{fontawesome5}%
\IfFileExists{orcid.pdf}{%
\def\orcidsymbol{\includegraphics[height=9\p@]{orcid}}
}{
\def\orcidsymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries \faOrcid}}%
}
\def\mailsymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries \faIcon[regular]{envelope}}}%
\def\homesymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries \faHome}}%
}{%
\ClassWarning{Package fontawesome5 not installed}{Please install package fontawesome5}
\def\orcidsymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries ORCID}}
\def\mailsymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries @}}%
\def\homesymbol{\textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries H}}%
}%
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
\RequirePackage{color} %kept for backward compatibility
\AtBeginDocument{
  \@ifpackageloaded{xcolor}{}{
    \RequirePackage{xcolor}
  }
  \definecolor{darkgray}{rgb}{0.31,0.31,0.33}
  \definecolor[named]{dagpubGray}{rgb}{0.31,0.31,0.33}
  \definecolor[named]{dagpubBulletGray}{rgb}{0.60,0.60,0.61}
  \definecolor[named]{dagpubLineGray}{rgb}{0.51,0.50,0.52}
  \definecolor[named]{dagpubLightGray}{rgb}{0.85,0.85,0.86}
  \definecolor[named]{dagpubYellow}{rgb}{0.99,0.78,0.07}
  \definecolor{darkgray}{rgb}{0.31,0.31,0.33}
  \definecolor[named]{litesGray}{rgb}{0.31,0.31,0.33}
  \definecolor[named]{litesBulletGray}{rgb}{0.60,0.60,0.61}
  \definecolor[named]{litesLineGray}{rgb}{0.51,0.50,0.52}
  \definecolor[named]{litesLightGray}{rgb}{0.85,0.85,0.86}
  \definecolor[named]{litesYellow}{rgb}{0.99,0.78,0.07}
}
\RequirePackage{babel}
\RequirePackage[tbtags,fleqn]{amsmath}
\AtBeginDocument{
  \@ifpackageloaded{enumitem}{\ClassWarning{Package 'enumitem' incompatible}{Don't use package 'enumitem'; Package enumerate preloaded!}}{}
  \@ifpackageloaded{paralist}{\ClassWarning{Package 'paralist' incompatible}{Don't use package 'paralist'; Package enumerate preloaded!}}{}
}
\RequirePackage{enumerate}
\def\@enum@{\list{\textcolor{dagpubGray}{\sffamily\bfseries\upshape\mathversion{bold}\csname label\@enumctr\endcsname}}%
           {\advance\partopsep\topsep
            \topsep\z@\@plus\p@
            \usecounter{\@enumctr}\def\makelabel##1{\hss\llap{##1}}}}
\def\romanenumerate{\enumerate[(i)]}
\let\endromanenumerate\endenumerate
\def\alphaenumerate{\enumerate[(a)]}
\let\endalphaenumerate\endenumerate
\def\bracketenumerate{\enumerate[(1)]}
\let\endbracketenumerate\endenumerate
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
        backgroundcolor=\color{dagpubLightGray},%
        frame=single,framerule=0pt,xleftmargin=\fboxsep,xrightmargin=\fboxsep}
\RequirePackage[left,mathlines]{lineno}
\RequirePackage{csquotes}
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
\ifx\pdfa\relax%
  \RequirePackage[pdfa,unicode]{hyperref}%
\else%
  \RequirePackage[unicode]{hyperref}%
\fi%
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
  pdfauthor={ }
}%
\AtBeginDocument{
\ifx\usehyperxmp\relax
\hypersetup{
  pdftitle={\@DagPubSeriesNameShort, Vol. \@SeriesVolume, Issue \@SeriesIssue, \@DatePublished},
  pdfauthor={\ifx\@SectionAreaEditor\@empty \ifx\@EventEditors\@empty \@DagPubSeriesNameShort{} Editorial Board \else\@EventEditors\fi \else \@SectionAreaEditor\fi},
  pdfkeywords={\@keywords},
  pdfsubject={\@DagPubSeriesNameShort, Vol. \@SeriesVolume, Issue \@SeriesIssue, Article \@ArticleNo},
  pdfcopyright = {Copyright (C) \ifx\authoranonymous\relax Anonymous author(s) \else \ifx\@SectionAreaEditor\@empty \ifx\@EventEditors\@empty \@DagPubSeriesNameShort{} Editorial Board \else\@EventEditors\fi \else \@SectionAreaEditor\fi; \fi licensed under Creative Commons License CC-BY 4.0},
  pdflang={en},
  pdfmetalang={en},
  pdfpublisher={Schloss Dagstuhl -- Leibniz-Zentrum für Informatik, Dagstuhl Publishing, Germany},
  pdflicenseurl={https://creativecommons.org/licenses/by/4.0/},
  pdfpubtype={\@DagPubSeriesNameShort},
  pdfvolumenum={\@SeriesVolume},
  pdfissuenum={\@SeriesIssue}
  pdfpagerange={\@ArticleNo:\thepage-\@ArticleNo:\theTotPages},
  pdfdoi={\@dagpubdoi},
  pdfapart=3,
  pdfaconformance=B
}
\else%
\hypersetup{
  pdftitle={\@DagPubSeriesNameShort, Vol. \@SeriesVolume, Issue \@SeriesIssue, \@DatePublished},
  pdfauthor={\ifx\@SectionAreaEditor\@empty \ifx\@EventEditors\@empty \@DagPubSeriesNameShort{} Editorial Board \else\@EventEditors\fi \else \@SectionAreaEditor\fi},
  pdfkeywords={\@keywords},
  pdfsubject={\@DagPubSeriesNameShort, Vol.\@SeriesVolume,  Issue \@SeriesIssue; Copyright (C) \ifx\authoranonymous\relax Anonymous author(s) \else \ifx\@SectionAreaEditor\@empty \ifx\@EventEditors\@empty \@DagPubSeriesNameShort{} Editorial Board \else\@EventEditors\fi \else \@SectionAreaEditor\fi; \fi licensed under Creative Commons License CC-BY 4.0}
}%
\fi  %
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
\DeclareCaptionLabelFormat{boxed}{%
  \kern0.05em{\color{dagpubYellow}\rule{0.73em}{0.73em}}%
  \hspace*{0.67em}\bothIfFirst{#1}{~}#2}
\captionsetup{labelformat=boxed}
\captionsetup[table]{position=top}
\RequirePackage[figuresright]{rotating}
\caption@AtBeginDocument{\@ifpackageloaded{subfig}{\ClassError{dagpub}{%
  Do not load the subfig package}{The more recent subcaption package is already loaded}}{}}
\RequirePackage{subcaption}
\def\titlerunning#1{\gdef\@titlerunning{{\let\footnote\@gobble\markboth{#1}{#1}}}}
\def\authorrunning#1{%
  \gdef\@authorrunning{\markright{\ifx\authoranonymous\relax\textcolor{red}{Anonymous author(s)} \else\if!#1!\textcolor{red}{Author: Please fill in the \string\authorrunning\space macro}\else#1\fi\fi}}}
\titlerunning{\@title \if!\@subtitle!\else\subtitleseperator \@subtitle\fi}
\authorrunning{\textcolor{red}{Author: Please use the \string\authorrunning\space macro}}
\def\EventTitle#1{\gdef\@EventTitle{#1}}
\EventTitle{}
\def\EventLongTitle#1{\gdef\@EventLongTitle{#1}}
\EventLongTitle{}
\def\EventShortTitle#1{\gdef\@EventShortTitle{#1}}
\soulregister\EventShortTitle7
\EventShortTitle{}
\newcommand{\printEventShortTitle}{\mbox{\@EventShortTitle{}}}
\def\EventEditors#1{\gdef\@EventEditors{#1}}
\EventEditors{}
\def\EventNoEds#1{\gdef\@EventNoEds{#1}\xdef\@Eds{Editor\ifnum#1>1s\fi}}
\EventNoEds{1}
\def\EventLogo#1{\gdef\@EventLogo{#1}}
\EventLogo{}
\def\EventLogoURL#1{\gdef\@EventLogoURL{#1}}
\EventLogoURL{}
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
\def\Volume#1{%
   \ClassWarning{\string\Volume\space deprecated: Please don't use}{\string\Volume\space is deprecated in the styles of Dagstuhl Publishing. Please use \string\SeriesVolume\space instead.}%
   \gdef\@SeriesVolume{#1}}
\def\Issue#1{%
  \ClassWarning{\string\Issue\space deprecated: Please don't use}{\string\Issue\space is deprecated in the styles of Dagstuhl Publishing. Please use \string\SeriesIssue\space instead.}%
  \gdef\@SeriesIssue{#1}}
\def\SeriesIssue#1{\gdef\@SeriesIssue{#1}}
\SeriesIssue{}
\soulregister{\SeriesVolume}{7}
\newcommand{\printSeriesVolume}{\mbox{\@SeriesVolume{}}}
\def\ArticleNo#1{\gdef\@ArticleNo{#1}}
\ArticleNo{}
\def\Article#1{%
  \ClassWarning{\string\Article\space deprecated: Please don't use}{\string\Article\space is deprecated in the styles of Dagstuhl Publishing. Please use \string\ArticleNo\space instead.}%
  \gdef\@ArticleNo{#1}%
}
\def\FirstPage#1{\setcounter{page}{#1}}
\ArticleNo{0}
\def\DagPubSeriesName#1{\gdef\@DagPubSeriesName{#1}}
\DagPubSeriesName{Leibniz Transactions on Embedded Systems}
\def\DagPubSeriesNameShort#1{\gdef\@DagPubSeriesNameShort{#1}}
\DagPubSeriesNameShort{LITES}
\def\DagPubSeriesNameShortSmall#1{\gdef\@DagPubSeriesNameShortSmall{#1}}
\DagPubSeriesNameShortSmall{lites}
\def\DagPubSeriesURL#1{\gdef\@DagPubSeriesURL{#1}}
\DagPubSeriesURL{https://www.dagstuhl.de/\@DagPubSeriesNameShortSmall}
\def\DagPubSeriesLogo#1{\gdef\@DagPubSeriesLogo{#1}}
\DagPubSeriesLogo{lites-logo}
\def\DOIPrefix#1{\gdef\@DOIPrefix{#1}}
\DOIPrefix{10.4230/\@DagPubSeriesNameShort}
\gdef\@dagpubdoi{\@DOIPrefix.\@SeriesVolume.\@SeriesIssue.\@ArticleNo}
\gdef\@dagpubIssueDoi{\@DOIPrefix.\@SeriesVolume.\@SeriesIssue}
\def\DOI#1{\ClassWarning{\string\DOI\space deprecated: Please don't use}{\string\DOI\space is obsolete in the styles of Dagstuhl Publishing.}}
\newcommand{\printDOI}{\@dagpubdoi}
\newcommand{\printIssueDOI}{\href{https://doi.org/\@dagpubIssueDoi}{\@dagpubIssueDoi}}
\newcommand{\printIssueDOIURL}{\url{https://doi.org/\@dagpubIssueDoi}}
\newcommand{\printForewordDOI}{\href{https://doi.org/\@dagpubIssueDoi.0}{\@dagpubIssueDoi.0}}
\def\ISSN#1{\gdef\@ISSN{#1}}
\ISSN{2199-2002}
\newcommand{\printISSN}{\@ISSN}
\def\and{\newline}
\newcommand*\Copyright[1]{%
  \def\@copyrightholder{#1}
  \def\@Copyright{%
   \ifx#1\empty \else
    \setbox\@tempboxa\hbox{\IfFileExists{cc-by.pdf}{\includegraphics[height=14\p@,clip]{cc-by}}{\includegraphics[height=14\p@, width=40pt]{example-image-plain}}}%
    \@rightskip\@flushglue \rightskip\@rightskip
    \hangindent\dimexpr\wd\@tempboxa+0.5em\relax
    \href{https://creativecommons.org/licenses/by/4.0/}%
         {\smash{\lower\baselineskip\hbox{\unhcopy\@tempboxa}}}\enskip
    \textcopyright\ %
    \ifx!#1!\textcolor{red}{Author: Please fill in the \string\Copyright\space macro}\else\ifx\authoranonymous\relax\textcolor{red}{Anonymous author(s)}\else#1\fi\fi
    ;\\%
    licensed under Creative Commons License CC-BY 4.0\ifx!#1!\\\null\fi\par
  \fi}}
\Copyright{\@empty}
\let\@copyrightholder\@empty
\def\hideDagpub{\let\@hideDagpub\relax}
\def\hideLITES{\let\@hideDagpub\relax}
\def\hideDateSubmission{\let\@hideDateSubmission\relax}
\def\hideDateAcceptance{\let\@hideDateAcceptance\relax}
\usepackage{xstring}
\def\keywords#1{\def\@keywords{#1}}
\let\@keywords\@empty
\def\keywordsHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Keywords and phrases\enskip}}
\RequirePackage{comment}
\excludecomment{CCSXML}
\global\newcommand\ccsdesc[2][100]{\@ccsdesc#1~#2~~\relax}
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
  \ClassError{dagpub}
    {\string\subjclass\space deprecated: Please enter subject classification in 1 or more ccsdesc macros}
    {Since 2019, \string\subjclass\space is obsolete in the styles of Dagstuhl Publishing.}}
\let\@subjclass\@empty
\newcommand{\printSubjclass}{%
  \ifx\@ccsdescString\@empty%
  \else%
    \par\emph{ACM Classification 2012}\\%
    \@ccsdescString%
  \fi%
}
\def\subjclassHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       2012 ACM Subject Classification\enskip}}
\def\doiHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Digital Object Identifier\enskip}}
\def\RelatedConference#1{\gdef\@RelatedConference{#1}}
\def\RelatedConferenceHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      Related Conference\enskip}}
\let\@RelatedConference\@empty
\def\RelatedArticle#1{\gdef\@RelatedArticle{#1}}
\def\RelatedArticleHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      Related Article\enskip}}
\let\@RelatedArticle\@empty
\def\EventShortName#1{%
  \ClassWarning{\string\EventShortName\space deprecated: Please don't use}{\string\EventShortName\space is deprecated in the styles of Dagstuhl Publishing. Please use \string\EventShortTitle\space instead.}%
  \gdef\@EventShortTitle{#1}}
\EventShortTitle{\@DagPubSeriesNameShort}
\def\serieslogo#1{\gdef\@serieslogo{#1}}
\serieslogo{}
\def\category#1{\def\@category{#1}}
\let\@category\@empty
\def\categoryHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Category\enskip}}
\def\relatedversion#1{\def\@relatedversion{#1}}
\let\@relatedversion\@empty
\define@key{relatedversiondetails}{linktext}{\def\relatedversiondetails@linktext{#1}}
\define@key{relatedversiondetails}{cite}{\def\relatedversiondetails@cite{#1}}
\newcommand*\addtorelatedversionmacro[2]{%
  \ifx\@relatedversion\@empty%
    \g@addto@macro\@relatedversion{#1}%
  \else%
    \g@addto@macro\@relatedversion{\\#1}%
  \fi%
}%
\newcommand{\relatedversiondetails}[3][]{%
  \begingroup%
    \let\relatedversiondetails@linktext\@empty
    \let\relatedversiondetails@cite\@empty
    \setkeys{relatedversiondetails}{#1}%
    \ifx\relatedversiondetails@linktext\@empty%
      \protected@edef\tmp{\textit{#2}:\space{\url{#3}}}%
    \else%
      \protected@edef\tmp{\textit{#2}:\space{\href{#3}{\texttt{\relatedversiondetails@linktext}}}}%
    \fi%
    \ifx\relatedversiondetails@cite\@empty%
    \else%
      \protected@edef\tmp{\tmp\nobreakspace\cite{\relatedversiondetails@cite}}%
    \fi%
    \expandafter\addtorelatedversionmacro\expandafter{\tmp}{#1}%
  \endgroup%
}%
\def\relatedversionHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Related Version\enskip}}
\def\supplement#1{\def\@supplement{#1}}
\let\@supplement\@empty
\define@key{supplementdetails}{linktext}{\def\supplementdetails@linktext{#1}}
\define@key{supplementdetails}{cite}{\def\supplementdetails@cite{#1}}
\define@key{supplementdetails}{subcategory}{\def\supplementdetails@subcategory{#1}}
\define@key{supplementdetails}{swhlinktext}{\def\supplementdetails@swhlinktext{#1}}
\let\supplementdetails@swhlinktext\@empty
\define@key{supplementdetails}{swhid}{
  \ifx\supplementdetails@swhlinktext\@empty%
    \StrBefore{#1}{;}[\supplementdetails@swhlinktext]%
  \fi%
  \def\supplementdetails@swhid{#1}%
}
\define@key{supplementdetails}{swhdelimiter}{\def\supplementdetails@swhdelimiter{#1}}
\def\supplementdetails@swhdelimiter{\\ \hspace*{1.2em}}
\newcommand*\addtosupplementmacro[2]{%
  \ifx\@supplement\@empty%
    \g@addto@macro\@supplement{#1}%
  \else%
    \g@addto@macro\@supplement{\\#1}%
  \fi%
}%
\newcommand{\supplementdetails}[3][]{%
  \begingroup%
    \let\supplementdetails@linktext\@empty
    \let\supplementdetails@cite\@empty
    \let\supplementdetails@subcategory\@empty
    \let\supplementdetails@swhid\@empty
    \setkeys{supplementdetails}{#1}%
    \ifx\supplementdetails@subcategory\@empty%
      \protected@edef\tmp{\textit{#2}}
    \else
      \protected@edef\tmp{\textit{#2\,\,(\supplementdetails@subcategory)}}%
    \fi
    \ifx\supplementdetails@linktext\@empty%
      \protected@edef\tmp{\tmp:\space{\url{#3}}}%
    \else%
      \protected@edef\tmp{\tmp:\space{\href{#3}{\texttt{\supplementdetails@linktext}}}}%
    \fi%
    \ifx\supplementdetails@cite\@empty%
    \else%
      \protected@edef\tmp{\tmp\nobreakspace\cite{\supplementdetails@cite}}%
    \fi
    \ifx\supplementdetails@swhid\@empty%
    \else%
      \ifx\supplementdetails@swhlinktext\@empty%
        \protected@edef\tmp{\tmp \supplementdetails@swhdelimiter{} archived at %
        \href{https://archive.softwareheritage.org/\supplementdetails@swhid}{\nolinkurl{\supplementdetails@swhid}}}%
      \else%
        \protected@edef\tmp{\tmp \supplementdetails@swhdelimiter{} archived at %
        \href{https://archive.softwareheritage.org/\supplementdetails@swhid}{\nolinkurl{\supplementdetails@swhlinktext}}}%
      \fi%
    \fi%
    \expandafter\addtosupplementmacro\expandafter{\tmp}{#1}%
  \endgroup%
}%
\def\supplementHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Supplementary Material\enskip}}
\newcommand\flag[2][0.9cm]{%
    \leavevmode\marginpar{%
        \raisebox{\dimexpr-\totalheight+\ht\strutbox\relax}%
        [\dimexpr\ht\strutbox+3mm][\dp\strutbox]{\expandafter\includegraphics[width=#1]{#2}}%
}}
\def\funding#1{\def\@funding{#1}}
\let\@funding\@empty
\def\fundingHeading{%
 \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      Funding\enskip}}
\def\acknowledgements#1{\def\@acknowledgements{#1}}
\let\@acknowledgements\@empty
\def\acknowledgementsHeading{%
 \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      Acknowledgements\enskip}}
\let\@additionalMetadata\@empty
\def\additionalMetadata#1#2{%
  \g@addto@macro\@additionalMetadata{%
    \vskip\topmattervskip\baselineskip\noindent%
    \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries #1\enskip}%
    #2}%
}%
\def\SectionAreaEditor#1{\gdef\@SectionAreaEditor{#1}}
\def\SectionAreaNoEds#1{\gdef\@SectionAreaNoEds{#1}\xdef\@SectionAreaEds{Editor\ifnum#1>1s\fi}}
\SectionAreaNoEds{1}
\def\SectionAreaEditorHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      \@SectionAreaEds\enskip}}
\let\@SectionAreaEditor\@empty
\def\SpecialIssue#1{\gdef\@SpecialIssue{#1}}
\def\SpecialIssueHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                      Special Issue\enskip}}
\let\@SpecialIssue\@empty
\def\DateSubmission#1{\gdef\@DateSubmission{#1}}
\def\DateSubmissionHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Received\enskip}}
\let\@DateSubmission\@empty
\def\DateAcceptance#1{\gdef\@DateAcceptance{#1}}
\def\DateAcceptanceHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Accepted\enskip}}
\let\@DateAcceptance\@empty
\def\DatePublished#1{\gdef\@DatePublished{#1}}
\def\DatePublishedHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       Published\enskip}}
\let\@DatePublished\@empty
\newcommand{\printDatePublished}{
  \@\ifx\@DatePublished\@empty
     \textcolor{red}{Publication date will be entered by Dagstuhl Publishing.}%
   \else
     \@DatePublished
   \fi
}
\def\ISBN#1{\gdef\@ISBN{#1}}
\def\ISBNHeading{%
  \textcolor{dagpubGray}{\fontsize{9}{12}\sffamily\bfseries
                       ISBN\enskip}}
\let\@ISBN\@empty
\newcommand{\printISBN}{\@ISBN}
\RequirePackage{amsthm}
\ifx\usethmrestate\relax
\RequirePackage{thm-restate}
\fi
\thm@headfont{%
  \textcolor{dagpubGray}{$\blacktriangleright$}\nobreakspace\sffamily\bfseries}
\def\th@remark{%
  \thm@headfont{%
    \textcolor{dagpubGray}{$\blacktriangleright$}\nobreakspace\sffamily}%
  \normalfont % body font
  \thm@preskip\topsep \divide\thm@preskip\tw@
  \thm@postskip\thm@preskip
}
\def\@endtheorem{\endtrivlist}%\@endpefalse
\renewcommand\qedsymbol{\textcolor{dagpubGray}{\ensuremath{\blacktriangleleft}}}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \color{dagpubGray}\sffamily\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist%\@endpefalse
}
\newcommand{\claimqedhere}{\renewcommand\qedsymbol{\textcolor{dagpubGray}{\ensuremath{\vartriangleleft}}}%
\qedhere%
\renewcommand\qedsymbol{\textcolor{dagpubGray}{\ensuremath{\blacktriangleleft}}}}
\newenvironment{claimproof}[1][\proofname]{
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \color{dagpubGray}\sffamily
    #1\@addpunct{.}]\ignorespaces
}{%
  \renewcommand\qedsymbol{\textcolor{dagpubGray}{\ensuremath{\vartriangleleft}}}
  \popQED\endtrivlist%\@endpefalse
  \renewcommand\qedsymbol{\textcolor{dagpubGray}{\ensuremath{\blacktriangleleft}}}
}
\DeclareRobustCommand{\dagpubEnd}{%
  \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
  \quad\hbox{$\lrcorner$}%
}
\DeclareRobustCommand{\litesEnd}{\dagpubEnd}
\AtBeginDocument{
  \@ifpackageloaded{algorithm2e}{
    \@ifpackagelater{algorithm2e}{2009/11/17}{
      \renewcommand{\algorithmcfname}{\sffamily\bfseries{}Algorithm}%
      \renewcommand{\@algocf@procname}{\sffamily\bfseries{}Procedure}%
      \SetAlgoCaptionSeparator{~}
      \SetAlCapHSkip{0pt}
      \renewcommand{\algocf@captiontext}[2]{%
        \kern0.05em{\color{dagpubYellow}\rule{0.73em}{0.73em}}%
        \hspace*{0.67em}\small #1\algocf@capseparator\nobreakspace#2}
      \renewcommand{\algocf@makecaption}[2]{%
        \parbox[t]{\textwidth}{\algocf@captiontext{#1}{#2}}%
      }%
      \renewcommand{\algocf@captionproctext}[2]{%
        {%
        \kern0.05em{\color{dagpubYellow}\rule{0.73em}{0.73em}}%
        \hspace*{0.67em}\small%
        \ProcSty{\ProcFnt\algocf@procname\ifthenelse{\boolean{algocf@procnumbered}}{\nobreakspace\thealgocf\algocf@typo\algocf@capseparator}{\relax}}%
        \nobreakspace\ProcNameSty{\ProcNameFnt\algocf@captname #2@}% Name of the procedure in ProcName Style.
        \ifthenelse{\equal{\algocf@captparam #2@}{\arg@e}}{}{% if no argument, write nothing
        \ProcNameSty{\ProcNameFnt(}\ProcArgSty{\ProcArgFnt\algocf@captparam #2@}\ProcNameSty{\ProcNameFnt)}%else put arguments in ProcArgSty:
        }% endif
        \algocf@captother #2@%
        }%
      }%
      \renewcommand{\@algocf@capt@boxed}{above}
      \renewcommand{\@algocf@capt@ruled}{above}
      \setlength\algotitleheightrule{0pt}
    }{\ClassWarning{%
      Package algorithm2e outdated}{You are using an outdated version of the package algorithm2e. Please update!}%
      }
  }{}
  \@ifpackageloaded{algorithm}{
    \captionsetup[algorithm]{name=Algorithm, labelformat=boxed, position=top}
    \newcommand\fs@ruled@notop{\def\@fs@cfont{\bfseries}\let\@fs@capt\floatc@ruled
    \def\@fs@pre{}%
    \def\@fs@post{\kern2pt\hrule\relax}%
    \def\@fs@mid{\kern2pt\hrule\kern2pt}%
    \let\@fs@iftopcapt\iftrue}
    \@ifundefined{fst@algorithm}{}{
      \renewcommand\fst@algorithm{\fs@ruled@notop}
    }
  }{}
  \ifx\usecleveref\relax\else
    \@ifpackageloaded{cleveref}{\ClassWarning{Use document option 'cleveref' instead}{Use document option 'cleveref' instead directly loading package 'cleveref'}}{}
  \fi
  \ifx\usethmrestate\relax\else
    \@ifpackageloaded{thm-restate}{\ClassWarning{Use document option 'thm-restate' instead}{Use document option 'thm-restate' instead directly loading package 'thm-restate'}}{}
  \fi
  \ifx\useautoref\relax
    \@ifundefined{algorithmautorefname}{\newcommand{\algorithmautorefname}{Algorithm}}{\renewcommand{\algorithmautorefname}{Algorithm}}%
  \fi
}
\ifx\usecleveref\relax
  \RequirePackage[capitalise, noabbrev]{cleveref}
  \crefname{algocf}{Algorithm}{Algorithms}
  \Crefname{algocf}{Algorithm}{Algorithms}
  \newcommand{\crefrangeconjunction}{--}
  \newcommand{\creflastconjunction}{, and\nobreakspace}
\fi
\ifx\useautoref\relax
  \RequirePackage{aliascnt}
\fi
\newtheoremstyle{claimstyle}{\topsep}{\topsep}{}{0pt}{\sffamily}{. }{5pt plus 1pt minus 1pt}%
  {$\vartriangleright$ \thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\ifx\numberwithinsect\relax
  \numberwithin{theorem}{section}
\fi
\ifx\useautoref\relax
  \addto\extrasenglish{%
    \def\chapterautorefname{Chapter}%
    \def\sectionautorefname{Section}%
    \def\subsectionautorefname{Subsection}%
    \def\subsubsectionautorefname{Subsubsection}%
    \def\paragraphautorefname{Paragraph}%
    \def\subparagraphautorefname{Subparagraph}%
  }
  \addto\extrasUKenglish{%
    \def\chapterautorefname{Chapter}%
    \def\sectionautorefname{Section}%
    \def\subsectionautorefname{Subsection}%
    \def\subsubsectionautorefname{Subsubsection}%
    \def\paragraphautorefname{Paragraph}%
    \def\subparagraphautorefname{Subparagraph}%
  }
  \addto\extrasUSenglish{%
  \def\chapterautorefname{Chapter}%
    \def\sectionautorefname{Section}%
    \def\subsectionautorefname{Subsection}%
    \def\subsubsectionautorefname{Subsubsection}%
    \def\paragraphautorefname{Paragraph}%
    \def\subparagraphautorefname{Subparagraph}%
  }
  \ifx\usethmrestate\relax
    \newtheorem{lemma}[theorem]{Lemma}
    \newtheorem{corollary}[theorem]{Corollary}
    \newtheorem{proposition}[theorem]{Proposition}
    \newtheorem{exercise}[theorem]{Exercise}
    \newtheorem{definition}[theorem]{Definition}
    \newtheorem{conjecture}[theorem]{Conjecture}
    \newtheorem{observation}[theorem]{Observation}
    \theoremstyle{definition}
    \newtheorem{example}[theorem]{Example}
    \theoremstyle{remark}
    \newtheorem{note}[theorem]{Note}
    \newtheorem*{note*}{Note}
    \newtheorem{remark}[theorem]{Remark}
    \newtheorem*{remark*}{Remark}
    \theoremstyle{claimstyle}
    \newtheorem{claim}[theorem]{Claim}
    \newtheorem*{claim*}{Claim}
  \else
    \newaliascnt{lemma}{theorem}
    \newtheorem{lemma}[lemma]{Lemma}
    \aliascntresetthe{lemma}
    \newcommand{\lemmaautorefname}{Lemma}
    \newaliascnt{corollary}{theorem}
    \newtheorem{corollary}[corollary]{Corollary}
    \aliascntresetthe{corollary}
    \newcommand{\corollaryautorefname}{Corollary}
    \newaliascnt{proposition}{theorem}
    \newtheorem{proposition}[proposition]{Proposition}
    \aliascntresetthe{proposition}
    \newcommand{\propositionautorefname}{Proposition}
    \newaliascnt{exercise}{theorem}
    \newtheorem{exercise}[exercise]{Exercise}
    \aliascntresetthe{exercise}
    \newcommand{\exerciseautorefname}{Exercise}
    \newaliascnt{definition}{theorem}
    \newtheorem{definition}[definition]{Definition}
    \aliascntresetthe{definition}
    \newcommand{\definitionautorefname}{Definition}
    \newaliascnt{conjecture}{theorem}
    \newtheorem{conjecture}[conjecture]{Conjecture}
    \aliascntresetthe{conjecture}
    \newcommand{\conjectureautorefname}{Conjecture}
    \newaliascnt{observation}{theorem}
    \newtheorem{observation}[observation]{Observation}
    \aliascntresetthe{observation}
    \newcommand{\observationautorefname}{Observation}
    \theoremstyle{definition}
    \newaliascnt{example}{theorem}
    \newtheorem{example}[example]{Example}
    \aliascntresetthe{example}
    \newcommand{\exampleautorefname}{Example}
    \theoremstyle{remark}
    \newaliascnt{note}{theorem}
    \newtheorem{note}[note]{Note}
    \aliascntresetthe{note}
    \newcommand{\noteautorefname}{Note}
    \newtheorem*{note*}{Note}
    \newaliascnt{remark}{theorem}
    \newtheorem{remark}[remark]{Remark}
    \aliascntresetthe{remark}
    \newcommand{\remarkautorefname}{Remark}
    \newtheorem*{remark*}{Remark}
    \theoremstyle{claimstyle}
    \newaliascnt{claim}{theorem}
    \newtheorem{claim}[claim]{Claim}
    \aliascntresetthe{claim}
    \newcommand{\claimautorefname}{Claim}
    \newtheorem*{claim*}{Claim}
    \ifx\numberwithinsect\relax
       \numberwithin{theorem}{section}
       \numberwithin{lemma}{section}
       \numberwithin{corollary}{section}
       \numberwithin{proposition}{section}
       \numberwithin{exercise}{section}
       \numberwithin{definition}{section}
       \numberwithin{conjecture}{section}
       \numberwithin{observation}{section}
       \numberwithin{example}{section}
       \numberwithin{note}{section}
       \numberwithin{remark}{section}
       \numberwithin{claim}{section}
    \fi
  \fi
\else
  \newtheorem{lemma}[theorem]{Lemma}
  \newtheorem{corollary}[theorem]{Corollary}
  \newtheorem{proposition}[theorem]{Proposition}
  \newtheorem{exercise}[theorem]{Exercise}
  \newtheorem{definition}[theorem]{Definition}
  \newtheorem{conjecture}[theorem]{Conjecture}
  \newtheorem{observation}[theorem]{Observation}
  \theoremstyle{definition}
  \newtheorem{example}[theorem]{Example}
  \theoremstyle{remark}
  \newtheorem{note}[theorem]{Note}
  \newtheorem*{note*}{Note}
  \newtheorem{remark}[theorem]{Remark}
  \newtheorem*{remark*}{Remark}
  \theoremstyle{claimstyle}
  \newtheorem{claim}[theorem]{Claim}
  \newtheorem*{claim*}{Claim}
\fi
\theoremstyle{plain}
\def\cleardoublepage{%
  \clearpage\if@twoside\ifodd\c@page\else\hbox{}\thispagestyle{empty}\newpage\fi\fi}
\def\subtitle#1{\gdef\@subtitle{#1}}
\subtitle{\ifx\@EventLongTitle\@empty\else{\large Special Issue of the \@EventLongTitle}\fi}
\title{\LARGE {\ifx\@SeriesVolume\@empty Volume\nobreakspace\textcolor{blue}{VOL}\else Volume\nobreakspace\@SeriesVolume\fi ~|~Issue\nobreakspace
   \ifx\@SeriesIssue\@empty\textcolor{blue}{ISS}\else\@SeriesIssue\fi ~|~\ifx\@DatePublished\@empty\textcolor{blue}{DatePublished}\else\@DatePublished\fi}}
\def\subtitleIssue#1{\gdef\@subtitleIssue{#1}}
\subtitleIssue{}
\let\orig@editor\@editor
\let\orig@editorLong\@editorLong
\let\@editorLong\@empty
\newcount\c@editor
\newcounter{currenteditor}
\def\@editornum{0}
\def\editor#1#2#3#4{%
  \ifx\@editor\orig@editor\let\@editor\@empty\fi
  \ifx\@editorLong\orig@editorLong\let\@editorLong\@empty\fi
  \g@addto@macro\@editor{#1\par\nobreak}
  \g@addto@macro\@editorLong{%
    \ifx\editorcolumns\relax
      \ifnum\c@editor>4
        \stepcounter{currenteditor}
        \ifodd\value{currenteditor}
          \par\medskip
          \begin{minipage}[t]{\textwidth}
          \begin{minipage}[t]{0.49\textwidth}
        \else 
          \hfill \begin{minipage}[t]{0.49\textwidth}
        \fi
      \else
        \ClassWarning{Option 'editorcolumns' only applicable for > 4 editor}{Option 'authorcolumns' only applicable for >4 editors!}
        \par\addvspace{0.5\baselineskip}
      \fi
    \else
      \par\addvspace{0.5\baselineskip}
    \fi
    {\large\bfseries
    \if!#1!
      \textcolor{red}{Editor: Please enter editor name}%
    \else
      #1%
      \if!#4!\else{\,\href{#4}{\orcidsymbol}}\fi%
    \fi
    \par}
    \def\and{\newline}
    \if!#2!\textcolor{red}{Editor: Please enter affiliation as second parameter of the editor macro}\else#2\fi
    \if!#3!\else\\*\href{mailto:#3}{#3}\fi
    \par
    \ifx\editorcolumns\relax
      \ifnum\c@editor>4
        \end{minipage}
        \ifnum\c@editor=\value{currenteditor}
          \end{minipage}
        \else
          \ifodd\value{currenteditor}
          \else
            \end{minipage}%
          \fi
        \fi
      \fi
    \fi}%
    \global\advance\c@editor\@ne
}
\newcommand{\printEditorLong}{%
  \ifx\@editorLong\@empty%
  \else%
  \par\emph{\@DagPubSeriesNameShort{} Special Issue Editors}%
    \@editorLong%
  \fi%
}
\def\titlepagebottomline#1{\gdef\@titlepagebottomline{#1}}
\titlepagebottomline{\mbox{\@DagPubSeriesNameShort, \ifx\@SeriesVolume\@empty Vol.\nobreakspace\textcolor{blue}{VOL}\else Vol.\nobreakspace\@SeriesVolume\fi
\ifx\@SeriesIssue\@empty,\space Issue\nobreakspace\textcolor{blue}{ISS}\else,\space Issue\nobreakspace\@SeriesIssue\fi
\qquad\qquad \ifx\@ISSN\@empty \qquad\qquad\qquad \else \hfill ISSN\nobreakspace\@ISSN \fi
\qquad\qquad \href{\@DagPubSeriesURL}{\@DagPubSeriesURL}}}
\def\titlepageheadline#1{\gdef\@titlepageheadline{#1}}
\titlepageheadline{\mbox{}}
\newenvironment{publicationinfo}
 {\parindent\z@
  \null\vfill
  \thispagestyle{empty}%
  \small}
 {\par\break}
\def\ps@titlepage{%
    \let\@evenhead\@empty
    \def\@oddhead{\hspace*{0.167\textwidth}%
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox{dagpubYellow}
                                    {\@tempdima0.833\textwidth\advance\@tempdima\evensidemargin
                                     \advance\@tempdima1in \advance\@tempdima\hoffset
                                     \hb@xt@\@tempdima{%\hspace*{0.833\textwidth}%
                                     \strut\hss}}}}}
    \def\@oddfoot{\hfuzz=48pt \hspace*{0.167\textwidth}%
                  \rlap{%
                    \vtop{%
                      \vskip10mm
                      \colorbox{dagpubYellow}
                                    {\@tempdima0.833\textwidth
                                     \advance\@tempdima\evensidemargin
                                     \advance\@tempdima1in \advance\@tempdima\hoffset
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
    {\Huge \includegraphics[width=15em]{\@DagPubSeriesNameShortSmall-logo-color} \par}
    \vskip 4.5em
   {\huge\@title \par}%
    \vskip 4.5em%
    {\large\@subtitle\par}%
   {\large\@subtitleIssue\par}%
    \vskip 9em%
    \ifx\@editor\orig@editor\else{\Large\mdseries Edited by\\ \huge\@editor\par}\fi%
    \vfill
    \rightskip\z@
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
   \textcolor{dagpubYellow}{\rule{12\p@}{12\p@}}\quad
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
%% End of file `litesmaster-v2021.cls'.
