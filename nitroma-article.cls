\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nitroma-article}[2020/01/27 LaTeX class for Nitroma articles]
\LoadClass[a4paper]{article}

\RequirePackage[margin=20mm]{geometry}

%%% COLOURS
\RequirePackage[table,xcdraw]{xcolor}
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
\newcommand{\headingfont}{\ralewayextra}

%%% SECTION TITLE FORMAT
\RequirePackage{titlesec}
% \titleformat{\chapter}{\LARGE\bfseries\scshape\color{color1}}{\thechapter}{1em}{}[\titlerule]
\titleformat{\section}{\color{color1}\Large\bfseries\headingfont}{\thesection}{1em}{}[\titlerule]
\titleformat{\subsection}{\color{color1}\large\bfseries\headingfont}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\color{color1}\bfseries\headingfont}{\thesubsubsection}{1em}{}

\titlespacing{\subsection}{0pt}{*2}{*1}
\titlespacing{\subsubsection}{0pt}{*1}{*1}

%%% TITLEPAGE
\newcommand\subtitle[1]{\newcommand\@subtitle{#1}}
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
        \raggedright\headingfont\bfseries
        \color{color2}\large\MakeUppercase{\@subtitle}\\
        \color{color1}\huge\linespread{1.3}\@title\\[2ex]
        \mdseries\rmfamily
        \color{color2}\normalsize\@author\\[1ex]
        \color{color2}\small\@date\\
    \end{minipage}
    \vfill
    \clearpage
}
\makeatother
