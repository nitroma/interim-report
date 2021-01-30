\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nitroma-article}[2020/01/27 LaTeX class for Nitroma articles]
\LoadClass[a4paper]{article}

\RequirePackage[margin=20mm]{geometry}

%%% COLOURS
\RequirePackage{xcolor}
\definecolor{color1}{HTML}{2D4F6C}
\definecolor{color2}{HTML}{8BDBDE}
\definecolor{red}{HTML}{EF476F}
\definecolor{green}{HTML}{06D6A0}
\definecolor{blue}{HTML}{0582CA}
\definecolor{yellow}{HTML}{FFD166}

%%% FONTS
\RequirePackage{fontspec}
    \setmainfont{Fira Sans}
    \setmonofont{inconsolata}
\RequirePackage[usefilenames]{firamath-otf}
\RequirePackage{raleway}

%%% SECTION TITLE FORMAT
\RequirePackage{titlesec}
% \titleformat{\chapter}{\LARGE\bfseries\scshape\color{color1}}{\thechapter}{1em}{}[\titlerule]
\titleformat{\section}{\color{color1}\Large\bfseries\ralewayextra}{\thesection}{1em}{}[\titlerule]
\titleformat{\subsection}{\color{color1}\large\bfseries\ralewayextra}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\color{color1}\bfseries\ralewayextra}{\thesubsubsection}{1em}{}

\titlespacing{\}{}{}{}

%%% TITLEPAGE
\RequirePackage{svg}
\makeatletter
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    % \geometry{margin=10mm}
    \hfill
    \begin{minipage}[t][0.5\linewidth][c]{0.5\linewidth}
        \includegraphics[width=\linewidth]{brand/logo-tight.pdf}
    \end{minipage}
    \vfill\vfill
    \begin{minipage}{0.65\textwidth}
        \raggedright\ralewayextra
        \color{color1}\huge\linespread{1.3}\textbf{\@title}\\[1ex]
        \color{color2}\normalsize\@author\\[1ex]
        \color{color2}\small\@date\\
    \end{minipage}
    \vfill
    \clearpage
}
\makeatother
