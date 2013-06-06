%%
%%This is file 'tjmath.cls'
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{tjmath}
    [2013/3/24 v1.0 tJU Dissertation Class]

\DeclareOption{year}{\def\tjubibstyle{A}}
\DeclareOption{numberorder}{\def\tjubibstyle{N}}

\newif\iftju@side\tju@sidetrue
\DeclareOption{twoside}{\tju@sidetrue}
\DeclareOption{oneside}{\tju@sidefalse}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\iftju@side
   \LoadClass[a4paper,12pt,twoside,titlepage,openany]{book}
   \def\tjuside{T}
\else
   \LoadClass[a4paper,12pt,oneside,titlepage]{book}
   \def\tjuside{O}
\fi

\RequirePackage[top=2.0cm,bottom=2.4cm,left=3.2cm,right=3.2cm,bindingoffset=0.5cm]{geometry}

\RequirePackage{ifthen}
\RequirePackage{calc}

\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

\RequirePackage[normalem]{ulem}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\RequirePackage[slantfont,boldfont]{xeCJK}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{SimSun}
\punctstyle{kaiming}


\RequirePackage{fancyhdr}
\RequirePackage{nomencl}
\RequirePackage{multirow}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{url}
\urlstyle{tt}

\bibliographystyle{plain}

\RequirePackage{lscape}
\RequirePackage{graphicx}

\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{caption}
\DeclareCaptionLabelSeparator{tju}{\hspace{1em}} %定义图表编号与标题间的间隔距离
\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{array}
\setlength{\headheight}{27pt}
\setlength{\footskip}{1.12cm}
\raggedbottom

\frenchspacing
\widowpenalty=10000
\setlength{\parskip}{0pt}

\setlength{\parindent}{2.5em}

\RequirePackage{setspace}
\doublespacing
\renewcommand{\arraystretch}{0.7}
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}

\DeclareRobustCommand{\chapterfont}{\fontsize{16pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\sectionfont}{\fontsize{14pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\subsectionfont}{\fontsize{13pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\subsubsectionfont}{\fontsize{12pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\figurefont}{\fontsize{10.5pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\formfont}{\fontsize{10.5pt}{0.6\baselineskip}\selectfont}


\setCJKfamilyfont{HeiTi}{SimHei}
\setCJKfamilyfont{KaiShu}{楷体}
%\setCJKfamilyfont{}{LiSu} %可以添加，确保字体库有字体 TODO
\setCJKfamilyfont{SongTi}{SimSun}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiShu}}
%\DeclareRobustCommand{\lishu}{\CJKfamily{LiShu}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\setcounter{secnumdepth}{4}


\titleformat{\chapter}[block]%
{\sanhao\heiti\filcenter}{第 \thechapter{} 章}{1em}{}{}
\titlespacing{\chapter}%
  {0pt}{0.3\baselineskip}{0.3\baselineskip}
\titlecontents{chapter}[1.5em]{}%
{第 \thecontentslabel{} 章\hspace{1em}}{}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\section}[hang]%
  {\sihao\heiti}{\thesection}{1em}{}{}
\titlespacing{\section}%
  {0pt}{0.2\baselineskip}{0.2\baselineskip}
\titlecontents{section}[2.2em]{}
{\hspace{1em}\thecontentslabel\hspace{1em}}{}{\titlerule*[7pt]{.}\contentspage}

\titleformat{\subsection}[hang]%
  {\xiaosi\heiti}{\thesubsection}{1em}{}{}
\titlespacing{\subsection}%
  {0pt}{0.1\baselineskip}{0.1\baselineskip}
\titlecontents{subsection}[3.0em]{}%
{\hspace{2em}\thecontentslabel\hspace{1em}}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsubsection}[hang]%
  {\xiaosi}{\thesubsubsection}{1em}{}{}
\titlespacing{\subsubsection}%
  {0pt}{0.0\baselineskip}{0.0\baselineskip}
\titlecontents{subsubsection}[3.4em]{}
{\hspace{2.5em}\thecontentslabel\hspace{1em}}{}{\titlerule*[3pt]{.}\contentspage}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[L]{\includegraphics[height=1.8\baselineskip]{pic/logo}}
    \fancyhead[R]{\xiaowu\songti毕业设计（论文）报告纸}
    \fancyfoot[R]{\xiaowu 共~\pageref{LastPage}~页~第~\thepage~页}}
    \fancyhf{}
    \fancyhead[L]{\includegraphics[height=1.8\baselineskip]{pic/logo}}
    \fancyhead[R]{\xiaowu\songti毕业设计（论文）报告纸}
    \fancyfoot[R]{\xiaowu 共~\pageref{LastPage}~页~第~\thepage~页}

\setlength{\headheight}{15pt} %% 设置页眉高度

\renewcommand{\contentsname}{\centerline{目\quad 录}}
\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listtablename}{\centerline{表~目~录}}
\setcounter{tocdepth}{3}  % 设置目录的深度到 subsubsection
\renewcommand{\bibname}{参~考~文~献}
\renewcommand{\nomname}{\centerline{术~语~表}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature

\newcommand{\newcaption}[1] {\caption{\figurefont #1}} %10.5pt的caption
\renewcommand{\figurename}{\figurefont 图} % 插图题头
\renewcommand{\tablename}{\formfont 表} % 插表题头
\newcommand{\figurecaption}{% 图片用caption
  \setlength{\abovecaptionskip}{6pt}%
  \setlength{\belowcaptionskip}{12pt}%
  \newcaption}
\newcommand{\formcaption}{% 表格用caption
  \setlength{\abovecaptionskip}{6pt}%
  \setlength{\belowcaptionskip}{6pt}%
  \newcaption}
\setlength{\belowcaptionskip}{2mm}
\renewcommand{\footnotesize}{\xiaowu}
\newtheoremstyle{tjutheorem}
   {9pt}{9pt}{\ttfamily}{0pt}{\heiti}{：~}{0pt}{}
\theoremstyle{tjutheorem}
\newtheorem{tjuhypothsis}{假设~}[chapter]
\newtheorem{tjudefine}{定义~}[chapter]
\newtheorem{tjutiaokuan}{条款~}[chapter]
\newtheorem{tjutheorem}{定理~}[chapter]
\newtheorem{tjuproposition}{命题~}[chapter]
\captionsetup{font=singlespacing, labelsep=tju}
\newenvironment{tjuproof}{\begin{proof}[\textnormal{\lishu 证明~}]}{\end{proof}}
\newcolumntype{.}{D{.}{.}{2.4}}
\AtBeginDocument{%
   \makeatletter
   \input{tjmath.cfg}
   \makeatother}
\endinput
%%
%% End of file `tjmath.cls'.
