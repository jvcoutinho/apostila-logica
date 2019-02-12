\NeedsTeXFormat {LaTeX2e}
\ProvidesClass{apostila}
\LoadClass[a4paper,oneside]{book}

\RequirePackage[a4paper, total={6in, 10in}]{geometry}
\RequirePackage[brazil]{babel}
\RequirePackage{titlesec}
\RequirePackage{FiraSans}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage[theorems, most]{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{forest}
\RequirePackage{afterpage}
\RequirePackage{pagecolor}
\RequirePackage{tabularx}
\RequirePackage{hyperref}

\usetikzlibrary{positioning,arrows,calc}
\tikzset{ modal/.style={>=stealth,shorten >=1pt,shorten <=1pt,auto, semithick}, world/.style={circle,draw,minimum size=0.5cm,fill=Emerald!15}, point/.style={circle,draw,inner sep=0.5mm,fill=black}, reflexive above/.style={->,loop,looseness=7,in=120,out=60}, reflexive below/.style={->,loop,looseness=7,in=240,out=300}, reflexive left/.style={->,loop,looseness=7,in=150,out=210}, reflexive right/.style={->,loop,looseness=7,in=30,out=330} }


% Parte.
\titleformat{\part}[display]
    {\scshape\centering\Huge} % Formato.
    {
        \begin{tcolorbox}[colback=black]
            \centering
            \color{Emerald}\fontsize{100pt}{0pt}\selectfont\thepart
        \end{tcolorbox}
    }   % Label.
    {0pt}  % Sep label-title.
    {} % Before.
    {} % After.

% Capítulo.
\titleformat{\chapter}
        {\scshape\Huge}
        {\begin{tikzpicture}[overlay]
            \fill[color=Emerald] (-5cm,-1pt) rectangle (30pt,19pt);
        \end{tikzpicture}
        \color{white}\thechapter}
        {10pt}
        {}
        {}

% Seção
\titleformat{\section}
        {\scshape\Large}
        {\begin{tikzpicture}[overlay]
            \fill[color=Emerald] (-5cm,-5pt) rectangle (\the\paperwidth,15pt);
        \end{tikzpicture}
        \color{white}\thesection}
        {10pt}
        {}
        {}

% Subseção
\titleformat{\subsection}
        {\scshape\large}
        {\thesubsection}
        {10pt}
        {}
        {}

\newenvironment{definition}[1]
        {
            \vspace{10pt}
            \begin{tcolorbox}[title=#1]
        }
        {
            \end{tcolorbox}
            \vspace{10pt}
        }

\newenvironment{structure}[5]
        {
            \vspace{10pt}
            \begin{tikzpicture}[modal]
                \node[world] (Dom) [label=above:\large #1, align=left] {#2};
                \node[world] (R) [below left =of Dom, align=left, label=above:Relações] {#3};
                \node[world] (D) [below = of Dom, align=left, label=above:Destaques] {#4};
                \node[world] (F) [below right=of Dom, align=left,label=above:Funções] {#5};
            \end{tikzpicture} 
             
        }
        {
           
            \vspace{10pt}
        }

\DeclareRobustCommand{\?}{\overset{?}{=}}

\newtcbtheorem[number within=section]{mytheo}{\scshape Teorema} {colback=Peach!5,colframe=Peach!35!black,fonttitle=\bfseries}{th}
\newenvironment{theorem}[1]
    {
        \vspace{10pt}    
        \begin {mytheo}{#1}{#1}
    }
    {
        \end{mytheo}
        \vspace{10pt}
    }

\DeclareRobustCommand{\littlelabel}[1]{{\small\bfseries #1}}

\newenvironment{example}
    {
        \vspace{10pt}
        \begin{tcolorbox}[breakable, colback=Cyan!0, colframe=Blue, sharp corners, title=Exercício Resolvido]
    }
    {
        \end{tcolorbox}
        \vspace{10pt}
    }

\DeclareRobustCommand{\propagate}[4]{$C_{#1}$ e $C_{#2}$#3 $\Rightarrow$ $#4$}

\newenvironment{exercises}
    {
        \newpage
        \addcontentsline{toc}{section}{Exercícios}
        \thispagestyle{empty}
        \begin{tikzpicture}[overlay]
            \fill[color=Blue!60] (-5cm,-1.3cm) rectangle (\the\paperwidth,3cm);
        \end{tikzpicture}
        \begin{center}
            {\huge\color{white}\scshape Exercícios}
        \end{center}
        \begin{tikzpicture}[overlay]
            \fill[color=Gray] (-5cm,10pt) rectangle (\the\paperwidth,2pt);
        \end{tikzpicture}      
        
        \begin{enumerate}
    }
    {
        \end{enumerate}
    }

\newenvironment{rexercises}
    {
        \newpage
        \addcontentsline{toc}{section}{Exercícios Resolvidos}
        \thispagestyle{empty}
        \begin{tikzpicture}[overlay]
            \fill[color=Green!60] (-5cm,-1.3cm) rectangle (\the\paperwidth,3cm);
        \end{tikzpicture}
        \begin{center}
            {\huge\color{white}\scshape Exercícios Resolvidos}
        \end{center}
        \begin{tikzpicture}[overlay]
            \fill[color=Gray] (-5cm,10pt) rectangle (\the\paperwidth,2pt);
        \end{tikzpicture}      
        
        \begin{enumerate}
    }
    {
        \end{enumerate}
    }

\newenvironment{question}
    {
        \item
    }
    {
    }

\newenvironment{resolution}
    {
        \begin{tcolorbox}[breakable, colback=Gray!20, colframe=White, sharp corners, title=]
    }
    {
        \end{tcolorbox}
    }