\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hpcchina}[HPC China]
\LoadClass[a4paper, 10.5pt,twocolumn,twoside,journal,scheme=chinese,fontset=none]{ctexart}
\def\sysfonts{1}
\DeclareOption{nosysfonts}{\xdef\sysfonts{0}}
\ProcessOptions\relax
\RequirePackage[twoside,a4paper,lmargin=17.9mm,rmargin=16mm,tmargin=15.55mm,bmargin=29.5mm, headsep=8bp, footskip=4pt, includeheadfoot,asymmetric,columnsep=0.3in]{geometry}
\RequirePackage{ifthen}
\usepackage[dvipsnames]{xcolor}
\usepackage{flushend}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{caption}
\usepackage{float}
\usepackage{cuted}
\usepackage{gbt7714}
\usepackage{fontspec}
\usepackage{hyperref}
\setcounter{secnumdepth}{3}

\renewcommand\thesection {\@arabic\c@section.}
\renewcommand\thesubsection   {\thesection \@arabic\c@subsection.}
\renewcommand\thesubsubsection{(\@arabic\c@subsubsection)}
\newcommand{\restorebmargin}{
 \global\setlength\textheight{255mm}
}
\renewcommand\section[1]{\linespread{2}\@startsection {section}{1}{\z@}%
  {-1.5ex \@plus -.2ex \@minus -.2ex}%
  {1.5ex \@plus.2ex}%
  {\zihao{-4}\sf\bfseries}{#1}\par}
\renewcommand\subsection[1]{\linespread{2}\@startsection{subsection}{2}{\z@}%
 {-1.0ex \@plus -.2ex \@minus -.2ex}%
 {1.0ex \@plus .2ex}%
 {\zihao{5}\sf\bfseries}{#1}\par}
\renewcommand\subsubsection[1]{\linespread{2}\@startsection{subsubsection}{3}{\z@}%
 {-0.5ex \@plus -.0ex \@minus -.2ex}%
 {0.5ex \@plus .0ex}%
 {\zihao{5}}{#1}\par}
\renewcommand\headrule{
 \vskip 0.3mm \hrule\@width\textwidth\@height0.75pt
}

\def\newclsvar#1#2{
 \expandafter\def\csname @#1\endcsname{#2}
 \long\expandafter\def\csname #1\endcsname##1{
  \long\expandafter\def\csname @#1\endcsname{##1}
 }
}
\newclsvar{affiliation}{}
\newclsvar{etitle}{}
\newclsvar{eauthor}{}
\newclsvar{eaffiliation}{}
\newclsvar{cabstract}{}
\newclsvar{eabstract}{}
\newclsvar{keyword}{}
\newclsvar{ekeyword}{}
\newclsvar{clcls}{}
\newclsvar{doi}{missing}
\newclsvar{issue}{卷(期):起止页,年}
\newclsvar{dateaccept}{yyyy-mm-dd}
\newclsvar{daterevise}{yyyy-mm-dd}
\newclsvar{grants}{无}
\newclsvar{email}{}
\def\getYear#1-#2-#3.{
#1
}
\renewcommand{\maketitle}{
 \begin{strip}
  \baselineskip=-1000pt
  \lineskip=0pt
  \lineskiplimit=\maxdimen
  \vskip \dimexpr 3.85mm - 8bp

   {\zihao{3} \sf \@title }
  \vskip 9.25mm
   {\zihao{5} \fangsong
    \@author
   }
  \vskip 1pt
  \zihao{-5}{
   \setlength\parskip{6pt}

   \@affiliation
   \vskip 2.5pt {(\@email)}
  }

  \vskip 4.5mm

  \zihao{4}{ {\bf \@etitle}}\\
  \vskip 9.2mm
  \zihao{5}{ {\@eauthor}
  }\\

  \vskip -0.15mm
  \zihao{-5}{
   \setlength\parskip{5.5pt}

   \@eaffiliation
  }

  \vskip \dimexpr 5mm+1.5pt

  {\zihao{-5}
  \lineskiplimit=1000pt
  \lineskip=7.5pt
  \setlength{\baselineskip}{18pt}\selectfont{
   {\bf Abstract}\quad \@eabstract
   \par}}
  \vskip -7.5pt
  \setlength{\baselineskip}{18pt}\selectfont{
   \zihao{-5}{
    \vspace {5mm}
    {\bf Key words}\quad \@ekeyword}\par}

  {
   \vskip \dimexpr 5mm + 1.5pt
   \zihao{5}{
    \lineskip 5.5pt
    \setlength{\baselineskip}{16pt}\selectfont{
     {\noindent{\zihao{-5}{\textsf{摘要}}} \textit{\@cabstract}}
     \par}}
   \vspace {7.6mm}
   {\noindent{{\zihao{-5}\textsf{关键词}} \textit{\@keyword}
     \par}}
   \vspace {7.6mm}
   {\noindent{\textsf{中图法分类号} \@clcls
     \par}}
  }
  \vskip 7mm

 \end{strip}
}

\ifnum\sysfonts=1
\setmainfont{Times New Roman}[LetterSpace=0]
\setCJKmainfont{SimSun}[ItalicFont=KaiTi, AutoFakeBold=2.17]
\setCJKsansfont{SimHei}[AutoFakeBold=2.17]
\setCJKmonofont{FangSong}[AutoFakeBold=2.17]
\newCJKfontfamily[zhsong]\songti{SimSun}[ItalicFont=KaiTi, AutoFakeBold=2.17]
\newCJKfontfamily[zhfs]\fangsong{FangSong}[AutoFakeBold=2.17]
\newCJKfontfamily[zhhei]\heiti{SimHei}[AutoFakeBold=2.17]
\else
\setmainfont{times.ttf}[LetterSpace=0, BoldFont=timesbd.ttf, ItalicFont=timesi.ttf, BoldItalicFont=timesbi.ttf]
\setCJKmainfont{simsun.ttc}[ItalicFont=simkai.ttf, AutoFakeBold=2.17]
\setCJKsansfont{simhei.ttf}[AutoFakeBold=2.17]
\setCJKmonofont{simfang.ttf}[AutoFakeBold=2.17]
\newCJKfontfamily[zhsong]\songti{simsun.ttf}[ItalicFont=simkai.ttf, AutoFakeBold=2.17]
\newCJKfontfamily[zhfs]\fangsong{simfang.ttf}[AutoFakeBold=2.17]
\newCJKfontfamily[zhhei]\heiti{simhei.ttf}[AutoFakeBold=2.17]
\fi
\renewcommand{\headrulewidth}{2pt}
\fancypagestyle{fancyfirst}{
 \fancyhead[C]{\zihao{-5}}
 \fancyfoot[L]{\hrule\@width2in\@height0.6pt \vskip \dimexpr\baselineskip-0.3mm
  \zihao{-5} 基金项目：\@grants\restorebmargin}
}
\fancyhead[L]{\hspace*{2.2mm}\zihao{-5}\thepage}
\fancyfoot[L,C,R]{}
\pagestyle{fancy}
\ctexset{autoindent=true}
\AtBeginDocument{%
 \thispagestyle{fancyfirst}
 \zihao{5}
 \baselineskip=15.5bp
}

%For english captions
\def\ecaptionname#1#2{
 \expandafter\def\csname @ecap@#1\endcsname{#2}
}
\DeclareCaptionFormat{xiao5}{\linespread{2}\zihao{-5}\selectfont#1#2#3}
\DeclareCaptionFormat{xiao5hei}{\heiti\zihao{-5}\selectfont#1#2#3}
\newcommand{\ecaption}[1]{\\\csname @ecap@\@captype\endcsname \csname the\@captype\endcsname\ #1}
\captionsetup{justification=centering}
\captionsetup[figure]{format={xiao5}, name={图}, labelsep={space}}
\captionsetup[table]{format={xiao5hei}, name={表}, labelsep={space}}
\ecaptionname{figure}{Fig.}
\ecaptionname{table}{Table\ }
\renewcommand{\bibsection}{
 \begin{center}
  \textbf{参\quad 考\quad 文\quad 献}
 \end{center}
}
\renewcommand\bibfont{\zihao{6}\baselineskip=12pt}

\newcommand{\authorbio}[2]{
  {
    \noindent
    \begin{minipage}[t]{0.6in}
    \vspace{0pt}
    \resizebox{0.6in}{!}{#1}
    \end{minipage}
    \begin{minipage}[t]{\dimexpr \linewidth-0.6in}
    \vspace{0pt}
    {\zihao{-5} #2}
    \end{minipage}
  }
}
\newcommand{\mailurl}[1]{\href{mailto://#1}{\nolinkurl{#1}}}
\AtEndDocument{\clearpage}
\citestyle{numbers}
\endinput
%%-------- The end of hpcchina.cls -------------%%