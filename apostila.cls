\NeedsTeXFormat {LaTeX2e}
\ProvidesClass{apostila}
\LoadClass[a4paper,oneside]{book}

\RequirePackage[a4paper, total={5in, 10in}]{geometry}
\RequirePackage[brazil]{babel}
\RequirePackage{titlesec}
\RequirePackage{FiraSans}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}

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