\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{lt}[2022/03/09 v1.0]

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{minted}
\RequirePackage{tikz}

\usetikzlibrary{positioning, automata}
\usetikzlibrary{matrix, positioning, fit}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{overlay-beamer-styles}
\usetikzlibrary{positioning,shadows,arrows,trees,shapes,fit}

\LoadClass[aspectratio=169,10pt]{beamer}

\newcommand{\gotopins}{\texttt{Go2Pins} }


\mode<presentation>
{
  \usetheme{Boadilla}
}

\author[Hugo Moreau]{Hugo Moreau}

\institute[LRDE]{
  EPITA Research and Development Laboratory

  Supervisor: \'Etienne Renault
}

\newcommand{\titleframe}{
\begin{frame}
  \titlepage%
  \includegraphics[width=4.2cm]{assets/LRDE-logo_CMYK.png}%
  \vspace{-3cm}%
  \begin{flushright}%
    \includegraphics[width=2.7cm]{share/figs/epita.pdf}%
  \end{flushright}%
\end{frame}
\logo{\includegraphics[height=1cm]{assets/LRDE-logo_CMYK.png}}
}

\newcommand{\bibframe}{
\section*{Bibliography}

\begin{frame}[allowframebreaks]
  \frametitle{References}
  \bibliographystyle{apalike}
  {\scriptsize \bibliography{assets/bib.bib, share/bib/csi.bib}}
\end{frame}
}
