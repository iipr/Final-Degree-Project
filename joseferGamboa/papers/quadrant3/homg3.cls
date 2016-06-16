\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{homg3}[1999/6/10 Standard LaTeX document class]
\newcommand\@ptsize{}\newif\if@restonecol\newif\if@titlepage
\@titlepagefalse\if@compatibility\else
\DeclareOption{b5paper}
{\setlength\paperheight{250mm}\setlength\paperwidth{176mm}}
\DeclareOption{a5paper}
{\setlength\paperheight{210mm}\setlength\paperwidth{148mm}}
\DeclareOption{a4paper}
{\setlength\paperheight{297mm}\setlength\paperwidth{210mm}}
\DeclareOption{letterpaper}
{\setlength\paperheight{11in}\setlength\paperwidth{8.5in}}
\DeclareOption{legalpaper}
{\setlength\paperheight{14in}\setlength\paperwidth{8.5in}}
\DeclareOption{executivepaper}
{\setlength\paperheight{10.5in}\setlength\paperwidth{7.25in}}
\DeclareOption{landscape}
{\setlength\@tempdima{\paperheight}%
\setlength\paperheight{\paperwidth}%
\setlength\paperwidth{\@tempdima}} \fi


\if@compatibility\renewcommand\@ptsize{0}\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}


\def\@thmcounter#1{\noexpand\arabic{#1}}
\def\@thmcountersep{.}
\def\@makethmnumber#1#2{\bf #1 #2:}
\def\sectionmark#1{.........}
\def\subsectionmark#1{........}
\def\subsubsectionmark#1{..........}
\def\paragraphmark#1{.........}
\def\subparagraphmark#1{...........}
%\def\sectionmark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\z@
%   \thesection. \ \fi ##1}}}}



\if@compatibility\else\DeclareOption{oneside}%
{\@twosidefalse\@mparswitchfalse}\fi
\DeclareOption{twoside}{\@twosidetrue\@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else\DeclareOption{final}%
{\setlength\overfullrule{0pt}}\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else\DeclareOption{notitlepage}%
{\@titlepagefalse}\fi\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{\AtEndOfPackage{%
\renewcommand\@openbib@code{\advance\leftmargin\bibindent
\itemindent-\bibindent\listparindent\itemindent\parsep\z@}%
\renewcommand\newblock{\par}}}
\ExecuteOptions{a4paper,10pt,oneside,onecolumn,final}
\ProcessOptions\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}\setlength\parskip%
{0\p@ \@plus \p@}\@lowpenalty51\@medpenalty151 \@highpenalty 301
\footskip48pt\headheight20pt\headsep12pt\textheight18cm
\setlength\topmargin{\paperheight}
\addtolength\topmargin{-2in}
\addtolength\topmargin{-\headheight}
\addtolength\topmargin{-\headsep}
\addtolength\topmargin{-\textheight}
\addtolength\topmargin{-\footskip}
\addtolength\topmargin{-.5\topmargin}
\@settopoint\topmargin\voffset-20mm
\setcounter{topnumber}{2}\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside 
\def\ps@headings{%
\let\@oddfoot\@empty\let\@evenfoot\@empty %NADA
\def\@evenhead{A\thepage\hfil\slshape\leftmark} %NADA
\def\@oddhead{{\slshape\rightmark}\hfil B\thepage} %NADA

    


\let\@mkboth\markboth\def\sectionmark##1{%
\markboth {\MakeUppercase{%
\ifnum \c@secnumdepth >\z@ \thesectionp\quad \fi ##1}}{}}%
\def\subsectionmark##1{\markright {%
\ifnum\c@secnumdepth>\@ne\thesubsectionp\quad \fi ##1}}}\else
\def\ps@headings{\let@oddfoot\@empty %NADA
\def\@oddhead{{\slshape\rightmark}\hfil C\thepage}%
\let\@mkboth\markboth\def\sectionmark ##1{%
\markright {\MakeUppercase{%
\ifnum \c@secnumdepth >\m@ne\thesectionp\quad \fi##1}}}}\fi


\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \def\@svsec{}\else
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname. \hskip
0em}\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
          \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M
#8\par}%
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname.}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\relax  %% \relax added 2 May 90
                   \@svsec #8\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname
the#1\endcsname.}\fi
                       #7}}\fi
     \@xsect{#5}}





\newcounter{PrimePag}
\setcounter{PrimePag}{1}%
\def\endDocument{\label{PagFin} \end{document}}


\newcounter{PagUno}
\newcommand{\RefPagFin}{\pageref{PagFin}}


\textheight 18cm
\oddsidemargin 1.5cm
\evensidemargin 1.5cm
\textwidth13cm
\headheight 25pt
\headsep 12pt



\font\titulo=cmssdc10 scaled \magstep 4
\font\name=cmssdc10 scaled 1200
\font\surname=cmssdc10 scaled 950
\font\sspeq=cmssdc10 scaled \magstep 0
\font\direccion=cmss8 scaled \magstep 0


\def\tittle#1{{%% \arraystretch.5
\title{{\titulo{#1}}}\normalsize}}


\def\aaa#1{\baselineskip 20pt\begin{center}{\name
#1}\end{center}\normalsize}




\def\address#1{\baselineskip 11pt \direccion \begin{center} #1
\end{center}\normalsize}


\newcommand{\cabecera}{{\footnotesize\sl\tabcolsep0pt
\begin{tabular}{lr}\AutorCorto & \TituloCorto \\
\multicolumn{2}{c}{\rule{\textwidth}{0pt}}\end{tabular}}}


\newcommand{\Pieprimera}{\tabcolsep 0pt
\hfill
\thepage
\hfill
}


%\newcommand{\Cabeceraprimera}{}


\newcommand{\piepares}{\tabcolsep 0pt %He modificado esta l地ea
\hspace*{-1mm}\thepage\hfill} %He modificado esta l地ea

%\begin{tabular}{lcl}\ \ \  %He anulado esta l地ea
%\rule[28.715pt]{-5.35mm}{0pt} %He anulado esta l地ea
%\hfill %He anulado esta l地ea
%&\hskip 18mm\thepage& \hspace{6.9cm} %He anulado esta l地ea
%\end{tabular}} %He anulado esta l地ea


\newcommand{\pieimpares}{\tabcolsep 0pt %He anulado esta l地ea
\hfill\thepage} %He modificado esta l地ea
%\begin{tabular}{rcr}\ \ \  %He anulado esta l地ea
%\rule[28.715pt]{1.35mm}{0pt} %He anulado esta l地ea
%&\hskip -5mm\thepage &%\hskip 19mm{}\\ %He anulado esta l地ea
%\end{tabular}} %He anulado esta l地ea



\def\MSC#1{\bigskip\noindent {\sl 2010 Mathematics Subject
Classification:} #1\par}


\def\MMSC{\@ifnextchar[{\@xfootnote}{
\xdef\@thefnmark{\thempfn}
\@MSCtext
}}
\def\keywords#1{\noindent {\sl Key words:} #1\par}



\long
\def\@MMSCtext#1{\insert
\footins{
    \interlinepenalty
\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname
\@thefnmark
}
    {\rule{\z@}{\footnotesep}\ignorespaces
\footnotesize
{\bf 2000 Mathematics Subject
Classification:} #1 \vskip 1mm
}}}




\def\keywordss{\@ifnextchar[{\@xfootnote}{
\xdef\@thefnmark{\thempfn}
\@keywordstext
}}



\long
\def\@keywordsstext#1{\insert
\footins{
    \interlinepenalty
\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname
\@thefnmark
}
    {\rule{\z@}{\footnotesep}\ignorespaces
\footnotesize
{\bf Key words:} #1 \vskip 2mm
}}}



\def\ps@myheadings{


\def\@evenhead{\ifnum\value{PrimePag}=1
    %\Cabeceraprimera
\setcounter{page}{\value{PagUno}}\else\cabecera\fi}


\def\@oddhead{\@evenhead}


\def\@oddfoot{
\ifnum\value{PrimePag}=1\Pieprimera
\setcounter{PrimePag}{2}
\else
\pieimpares \fi}


\def\@evenfoot{
\ifnum\value{PrimePag}=1\Pieprimera
\setcounter{PrimePag}{3}
\else
\piepares \fi}


\let\@mkboth\@gobbletwo\let\sectionmark\@gobble %NO
\let\subsectionmark\@gobble}%%




\if@titlepage %NO
\newcommand\maketitle{\begin{titlepage}%
\let\footnotesize\small\let\footnoterule\relax
\let \footnote\thanks\null\vfil\vskip 60\p@
\begin{center}{\LARGE\@title\par}\vskip 3em%
{\large\lineskip .75em\begin{tabular}[t]{c}\@author
\end{tabular}\par}\vskip 1.5em{\large \@date \par}
\end{center}\par\@thanks\vfil\null \end{titlepage}%
\setcounter{footnote}{0}\global\let\thanks\relax
\global\let\maketitle\relax\global\let\@thanks\@empty
\global\let\@author\@empty\global\let\@date\@empty
\global\let\@title\@empty\global\let\title\relax
\global\let\author\relax\global\let\date\relax Helka
\global\let\and\relax}




\else %SI
\newcommand\maketitle{\par\begingroup
\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
\def\@makefnmark{\rlap{\@textsuperscript{%
\normalfont\@thefnmark}}}%
\long\def\@makefntext##1{\parindent1em\noindent\hb@xt@1.8em%
{\hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
\if@twocolumn\ifnum\col@number=\@ne\@maketitle %NO
\else %NO
\twocolumn[\@maketitle]\fi %NO
\else %SI
\newpage\global\@topnum\z@  %SI
\@maketitle\fi\@thanks\endgroup \setcounter{footnote}{0} %SI
\global\let\thanks\relax\global\let\maketitle\relax
\global\let\@maketitle\relax\global\let\@thanks\@empty
\global\let\@author\@empty\global\let\@date\@empty
\global\let\@title\@empty\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax}



\def\@evenfoot{} %NADA
\def\@oddfoot{} %NADA


\def\@maketitle{\newpage\null %SI
\begin{center}\let\footnote\thanks{\LARGE\@title\par}%
%\vskip 1.5em{\large\lineskip .5em\begin{tabular}[t]{c}%
%\@author %OJO A ESTO
%\end{tabular}\par}%\vskip 1em
%{\large \@date}%LINEA 0
\end{center}
\authors
\direc \par\vskip -0.3em \noindent
\par\vskip 1.5em}\fi %% LINEA1
%\def\@makethmnumber#1#2{\bf #1 #2:}



\setcounter{secnumdepth}{3}
\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand\thepart{\@Roman\c@part}
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection
{\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{%
\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph
{\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph
{\theparagraph.\@arabic\c@subparagraph}


\newcommand\part{\par\addvspace{4ex}\@afterindentfalse
\secdef\@part\@spart}
\def\@part[#1]#2{\ifnum \c@secnumdepth >\m@ne
\refstepcounter{part}\addcontentsline{toc}{part}%
{\thepart\hspace{1em}#1}\else\addcontentsline{toc}{part}%
{#1}\fi{\parindent\z@\raggedright\interlinepenalty \@M
\normalfont\ifnum\c@secnumdepth >\m@ne \Large\bfseries
\partname~\thepart\par\nobreak\fi \huge \bfseries
#2\markboth{}{}\par}\nobreak\vskip 3ex \@afterheading}
\def\@spart#1{{\parindent\z@\raggedright\interlinepenalty\@M
\normalfont\huge \bfseries #1\par}\nobreak\vskip 3ex
\@afterheading}
\newcommand\section{\@startsection {section}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}{2.3ex \@plus.2ex}%
{\normalfont
%\Large
\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
{-3.25ex\@plus -1ex \@minus -.2ex}{1.5ex \@plus .2ex}%
{\normalfont
%\large
\bfseries}}
\newcommand\subsubsection{%
\@startsection{subsubsection}{3}{\z@}%
{-3.25ex\@plus -1ex \@minus -.2ex}{1.5ex \@plus .2ex}%
{\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
{3.25ex \@plus1ex \@minus.2ex} {-1em}%
{\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{%
\@startsection{subparagraph}{5}{\parindent}%
{3.25ex \@plus1ex \@minus .2ex} {-1em}%
{\normalfont\normalsize\bfseries}}
\if@twocolumn\setlength\leftmargini{2em}
\else\setlength\leftmargini{2.5em}\fi \leftmargin
\leftmargini\setlength\leftmarginii{2.2em}
\setlength\leftmarginiii{1.87em} \setlength\leftmarginiv{1.7em}



\if@twocolumn\setlength\leftmarginv{.5em} %NO
\setlength\leftmarginvi{.5em}\else
\setlength\leftmarginv{1em}\setlength\leftmarginvi{1em}\fi


\setlength\labelsep{.5em}\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty-\@lowpenalty\@endparpenalty-\@lowpenalty
\@itempenalty-\@lowpenalty


\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}{\list{}{\labelwidth\z@
\itemindent-\leftmargin\let\makelabel\descriptionlabel}}
{\endlist}\newcommand*\descriptionlabel[1]{\hspace\labelsep
\normalfont\bfseries #1}



\if@titlepage \newenvironment{abstract}{\titlepage\null\vfil
\@beginparpenalty\@lowpenalty\begin{center}\bfseries
\abstractname\@endparpenalty\@M\end{center}}%
\par\vfil\null\endtitlepage} %NO
\else %SI
\newenvironment{abstract}{\if@twocolumn\section*{%
\abstractname}\else\small\begin{center}{\bfseries
\abstractname\vspace{-.5em}\vspace{\z@}}\end{center}%
\quotation\fi}{\if@twocolumn\else\endquotation\fi}\fi
\newenvironment{verse}{\let\\\@centercr\list{}{\itemsep\z@
\itemindent-1.5em\listparindent\itemindent\rightmargin%
\leftmargin\advance\leftmargin1.5em}\item\relax}{\endlist}
\newenvironment{quotation}{\list{}{\listparindent 1.5em%
\itemindent\listparindent\rightmargin\leftmargin\parsep\z@
\@plus\p@}\item\relax}{\endlist}\newenvironment{quote}
{\list{}{\rightmargin\leftmargin}\item\relax}{\endlist}
\if@compatibility\newenvironment{titlepage}{\if@twocolumn
\@restonecoltrue\onecolumn\else \@restonecolfalse\newpage
\fi\thispagestyle{empty}\setcounter{page}\z@}
{\if@restonecol\twocolumn \else \newpage\fi}\else
\newenvironment{titlepage}{\if@twocolumn\@restonecoltrue
\onecolumn\else\@restonecolfalse\newpage\fi
\thispagestyle{empty}\setcounter{page}\@ne}%
{\if@restonecol\twocolumn\else\newpage\fi\if@twoside\else
\setcounter{page}\@ne\fi}\fi



\newcommand\appendix{\par\setcounter{section}{0}%
\setcounter{subsection}{0}\renewcommand\thesection{%%
\@Alph\c@section}}
\setlength\arraycolsep{5\p@}\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}\setlength\doublerulesep%
{2\p@}\setlength\tabbingsep{\labelsep}
\skip\@mpfootins=\skip\footins\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}\renewcommand\theequation{%
\@arabic\c@equation}\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}\def\ftype@figure{1}
\def\ext@figure{lof}\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}{\@float{figure}}{\end@float}
\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}



\def\fps@table{tbp}\def\ftype@table{2}\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}\newenvironment{table}
{\@float{table}}{\end@float}\newenvironment{table*}
{\@dblfloat{table}}{\end@dblfloat}
\newlength\abovecaptionskip\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{\vskip\abovecaptionskip
\sbox\@tempboxa{#1: #2}\ifdim\wd\@tempboxa>\hsize#1: #2\par
\else\global\@minipagefalse\hb@xt@\hsize{\hfil\box%
\@tempboxa\hfil}\fi\vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}%%
{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}%%
{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}\setcounter{tocdepth}{3}
\newcommand\tableofcontents{\section*{\contentsname
\@mkboth{\MakeUppercase\contentsname}%%
{\MakeUppercase\contentsname}}\@starttoc{toc}}
\newcommand*\l@part[2]{  \ifnum \c@tocdepth >-2\relax
\addpenalty\@secpenalty   \addvspace{2.25em \@plus\p@}%
\begingroup\setlength\@tempdima{3em}\parindent\z@\rightskip
\@pnumwidth\parfillskip-\@pnumwidth{\leavevmode\large
\bfseries#1\hfil\hb@xt@\@pnumwidth{\hss #2}}\par\nobreak
\if@compatibility  \global\@nobreaktrue
\everypar{\global\@nobreakfalse\everypar{}}\fi\endgroup\fi}
\newcommand*\l@section[2]{\ifnum\c@tocdepth>\z@
\addpenalty\@secpenalty\addvspace{1.0em \@plus\p@}%
\setlength\@tempdima{1.5em}\begingroup\parindent\z@
\rightskip\@pnumwidth\parfillskip-\@pnumwidth\leavevmode
\bfseries\advance\leftskip\@tempdima\hskip-\leftskip#1%
\nobreak\hfil\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
\endgroup\fi}\newcommand*\l@subsection{%%
\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}%%
{3.2em}}\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}%%
{4.1em}}\newcommand*\l@subparagraph{\@dottedtocline{5}%%
{10em}{5em}}
\newcommand\listoffigures{\section*{\listfigurename
\@mkboth{\MakeUppercase\listfigurename}%
{\MakeUppercase\listfigurename}}\@starttoc{lof}}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{\section*{\listtablename
\@mkboth{\MakeUppercase\listtablename}%%
{\MakeUppercase\listtablename}}\@starttoc{lot}}
\let\l@table\l@figure\newdimen\bibindent
\setlength\bibindent{1.5em}


\newenvironment{thebibliography}[1]
{\section*{\refname\@mkboth{\MakeUppercase\refname}%%
{\MakeUppercase\refname}}\small\list{\@biblabel{%%
\@arabic\c@enumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
\leftmargin\labelwidth\advance\leftmargin\labelsep
\@openbib@code\usecounter{enumiv}\let\p@enumiv\@empty
\renewcommand\theenumiv{\@arabic\c@enumiv}}\sloppy
\clubpenalty4000\@clubpenalty\clubpenalty\widowpenalty4000%
\sfcode`\.\@m}{\def\@noitemerr{\@latex@warning{%%
Empty `thebibliography' environment}}\endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty\newenvironment{theindex}
{\if@twocolumn\@restonecolfalse\else\@restonecoltrue\fi
\columnseprule\z@\columnsep35\p@
\twocolumn[\section*{\indexname}]%
\@mkboth{\MakeUppercase\indexname}{\MakeUppercase\indexname}
\thispagestyle{plain}\parindent\z@\parskip\z@\@plus .3\p@%%
\relax\let\item\@idxitem}{\if@restonecol\onecolumn\else
\clearpage\fi}


\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@
\@minus3\p@\relax}\renewcommand\footnoterule{%
\kern-3\p@\hrule\@width.4\columnwidth \kern2.6\p@}
\newcommand\@makefntext[1]{\parindent1em\noindent
\hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}\newcommand\indexname{Index}
\newcommand\figurename{Figure}\newcommand\tablename{Table}
\newcommand\partname{Part}\newcommand\appendixname{Appendix}


\newcommand\abstractname{\sspeq ABSTRACT}


\newcommand\today{}
\edef\today{\ifcase\month\or January\or February\or March\or
April\or May\or June\or July\or August\or September\or
October\or November\or December\fi\space\number\day, %%
\number\year}\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{myheadings} %
\pagenumbering{arabic} \if@twoside\else\raggedbottom\fi
\if@twocolumn\twocolumn\sloppy\flushbottom\else\onecolumn\fi


\newcommand{\Fn} {\rule{2mm}{2mm}}\flushbottom




\newcommand{\D}{\displaystyle}



\usepackage{amsfonts}
\newcommand{\field}[1]{\mathbb{#1}}
\newcommand{\A}{\field{A}}
\newcommand{\B}{\field{B}}
\newcommand{\C}{\field{C}}
\newcommand{\DD}{\field{D}}
\newcommand{\E}{\field{E}}
\newcommand{\F}{\field{F}}
\newcommand{\G}{\field{G}}
\newcommand{\Hh}{\field{H}}
\newcommand{\I}{\field{I}}
\newcommand{\J}{\field{J}}
\newcommand{\K}{\field{K}}
\newcommand{\Ld}{\field{L}}
\newcommand{\M}{\field{M}}
\newcommand{\N}{\field{N}}
\newcommand{\OO}{\field{O}}
\newcommand{\PP}{\field{P}}
\newcommand{\Q}{\field{Q}}
\newcommand{\R}{\field{R}}
\newcommand{\Sss}{\field{S}}
\newcommand{\T}{\field{T}}
\newcommand{\U}{\field{U}}
\newcommand{\V}{\field{V}}
\newcommand{\W}{\field{W}}
\newcommand{\X}{\field{X}}
\newcommand{\Y}{\field{Y}}
\newcommand{\Z}{\field{Z}}


\newcommand{\bysame} {\rule{12mm}{0,5pt}}



\newcommand{\sen}%%
{\mathop{\hbox{\rm sen}}\nolimits}        %  seno spanish
%%
\newcommand{\arctg}{\mathop{\hbox{\rm arctg}}\nolimits}
\newcommand{\cotg}{\mathop{\hbox{\rm cotg}}\nolimits}
\newcommand{\tg}{\mathop{\hbox{\rm tg}}\nolimits}
%\newcommand{\Fin}%%
%{\begin{flushright}\rule{2mm}{2mm} \end{flushright}}
\newcommand{\Fin}%%
{\hfill \rule{2mm}{2mm}}
\newcommand{\dent}{\mathop{\hbox{\rm dent}}\nolimits}
\newcommand{\ext}{\mathop{\hbox{\rm ext}}\nolimits}
\newcommand{\card}{\mathop{\hbox{\rm card}}\nolimits}
\newcommand{\conv}{\mathop{\hbox{\rm conv}}\nolimits}
\newcommand{\dist}{\mathop{\hbox{\rm dist}}\nolimits}
\newcommand{\supp}{\mathop{\hbox{\rm supp}}\nolimits}
\newtheorem{definition}{\bf Definition}[section]
\newtheorem{theorem}{\bf Theorem}[section]
\newtheorem{remark}{\bf Remark}[section]
\newtheorem{corollary}{\bf Corollary}[section]
\newtheorem{lemma}{\bf Lemma}[section]
\@addtoreset{equation}{section}    
\def\theequation{\arabic{equation}}  %He a紡dido esta l地ea
\renewcommand\theequation            %He a紡dido esta l地ea     
  {\ifnum \c@section>\z@ \thesection.\fi \@arabic\c@equation}  %He a紡dido esta l地ea

\newtheorem{Theorem}{Theorem}[section]
\newtheorem{Definition}{Definition}[section]
\renewcommand{\theDefinition}{}
%\newtheorem{Proposition}{Proposition}[section]
\newtheorem{Proposition}[theorem]{Proposition}
%\newtheorem{Lemma}{Lemma}[section]
%\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{Lemma}[theorem]{Lemma}
%\newtheorem{Corollary}{Corollary}[section]
\newtheorem{Corollary}[theorem]{Proposition}
\newtheorem{Note}{Note}[section]
\newtheorem{Remark}{Remark}
%\renewcommand{\theRemark}{}


\def\Bbb{\mathbb}
\def\cal{\mathcal}

\def\ps@headings{%
    \def\@oddfoot{\hfil\thepage}                           %RACSAM
    \def\@evenfoot{\thepage\hfil}                          %RACSAM
    \def\@evenhead{}%                                      %RACSAM
    \def\@oddhead{}%                                       %RACSAM
    }

\endinput
