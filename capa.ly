\version "2.24.4"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  top-margin = 12\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  print-page-number = ##f
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
  two-sided = ##f
  ragged-last = ##t
}

\markup {
  \fill-line \rounded-box \pad-markup #4 {
    \center-column {
      \vspace #6
      \fontsize #8 \bold "Songbook"
      \null
      \fontsize #8 \bold "Corinhos Evangélicos"
      \vspace #3
      \fontsize #4 ""
      \vspace #4

      \fill-line {
        \line {
          \override #'(font-name . "Helvetica")
          \override #'(size . 2)
          \override #'(fret-diagram-details . ((fret-count . 4)(barre-type . straight)(number-type . arabic)(dot-radius . 0.3))) {
            \center-column {
              \fontsize #5 \concat { Dm \super 7 }
              \fret-diagram-terse #"x;x;o;2;1-(;1-);"
            } \hspace #2
            \center-column {
              \fontsize #5 \concat { G \super 7 }
              \fret-diagram-terse #"3;2;o;o;o;1;"
            } \hspace #2
            \center-column {
              \fontsize #5 \concat { C \super Δ7 }
              \fret-diagram-terse #"x;3;2;o;o;o;"
            }
          }
        }
      }

      \vspace #4
      \fontsize #3 \bold "Samuel Santana da Purificação"
      \vspace #2
      \fontsize #0 \concat { \char ##x00a9 " 2025 Real Sigma Music" }
      \fontsize #0 "Escola de música"
      \vspace #4
    }
  }
}