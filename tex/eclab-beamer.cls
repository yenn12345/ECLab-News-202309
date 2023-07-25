\ProvidesClass{eclab-beamer}

\LoadClass[8pt, aspectratio=169, professionalfont]{beamer}

\usepackage{newtxtext}
\usepackage{ctex}
\usepackage[T1]{fontenc}
\usepackage{graphicx}

\definecolor{Titlebg}{RGB}{250, 241, 236}

\setbeamercolor{title}{fg=black,bg=white}
\setbeamerfont{title}{size=\Huge, series=\bfseries}
\setbeamerfont{subtile}{size=\Large}

\setbeamertemplate{frametitle}{%
  \begin{beamercolorbox}[wd=\textwidth,ht=0.5cm,dp=0.2cm]{frametitle}
    \usebeamerfont{frametitle}\insertframetitle
  \end{beamercolorbox}
}

\setbeamertemplate{title page} {%
  \begin{columns}
  \begin{column}{0.5\textwidth}
  \begin{figure}
    \includegraphics[width=50mm]{images/face.png}
  \end{figure}
  \end{column}

  \begin{column}{0.5\textwidth}
    \begin{center}
    \vspace{1cm}
    \usebeamerfont{title}
    \inserttitle

    \vspace{2mm}
    \usebeamerfont{subtitle}\insertsubtitle

    \vspace{2cm}
    \begin{figure}
      \includegraphics[width=30mm]{images/logo.png}
    \end{figure}
    \end{center}
  \end{column}
  \end{columns}
}
