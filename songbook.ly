\version "2.24.4"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  two-sided = ##t
  inner-margin = 15\mm
  outer-margin = 10\mm
  binding-offset = 5\mm
  ragged-last = ##f
  ragged-bottom = ##t

  tagline = ##f

  tocTitleMarkup = \markup \column {
    \fill-line { \null \fontsize #6 \bold "Índice" \null }
    \vspace #2
  }

  tocItemMarkup = \markup \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }

  tocItemMarkup = \tocItemWithDotsMarkup

  oddHeaderMarkup = \markup \column {
    \fill-line {
      \fontsize #1 "Real Sigma Music"
      \null
      \fontsize #1 \fromproperty #'page:page-number-string
    }
    \vspace #-0.75
    \draw-hline
    \vspace #1
  }

  evenHeaderMarkup = \markup \column {
    \fill-line {
      \fontsize #1 \fromproperty #'page:page-number-string
      \null
      \fontsize #1 "Real Sigma Music"
    }
    \vspace #-0.75
    \draw-hline
    \vspace #1
  }

  oddFooterMarkup = \markup {
    \vspace #1.5
    \fill-line { \null \fontsize #1 \fromproperty #'page:page-number-string }
  }

  evenFooterMarkup = \markup {
    \vspace #1.5
    \fill-line { \fontsize #1 \fromproperty #'page:page-number-string \null }
  }
}

\book {
  \bookOutputName "Songbook - Corinhos Evangélicos"
  \bookpart {
    \include "capa.ly"
  }

  \bookpart {
    \markuplist \table-of-contents
  }

  \bookpart {
     \tocItem \markup "Se Começarmos A Orar"
     \include "Josué-Barbosa-Lira-Se-Começarmos-A-Orar.ly"
   }
  
   \bookpart {
     \tocItem \markup "Caminhando Vou"
     \include "Luiz-de-Carvalho-Caminhando-Vou.ly"
   }

}