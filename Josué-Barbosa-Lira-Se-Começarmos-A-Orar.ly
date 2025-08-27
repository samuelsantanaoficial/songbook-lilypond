\version "2.24.4"

\include "my-guitar-fretboards.ly"

\header {
  title = "Se Começarmos A Orar"
  composer = "Josué Barbosa Lira"
}

\markup \vspace #1

\score {
  <<
    \new ChordNames {
      \chordmode {
        c c:7 d:m7 d:m7.5- f g g:7 a:7
      }
    }
    \new FretBoards \with {
      \override FretBoard.size = #1.3
      \override FretBoard.fret-diagram-details.fret-count = #4
      \override FretBoard.fret-diagram-details.barre-type = #'straight
      \override FretBoard.fret-diagram-details.number-type = #'arabic
      \override FretBoard.fret-diagram-details.dot-radius = #0.3
    } {
      \chordmode {
        c c:7 d:m7 d:m7.5- f g g:7 a:7
      }
    }
  >>
  \layout {
    indent = 0
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\markup \vspace #1

\score {
  <<
    \new ChordNames {
      \chordmode {
        \repeat volta 2 {
          g,1 c1*2 g, d1:m7 g,:7 c
        }
        \repeat volta 2 {
          c1:7 f d:m7.5- c a,:7 d:m7
        }
        \alternative {
          {
            g,:7 c
          }
          {
            g,:7 c
          }
        }
        c1
      }
    }
    \new Staff {
      \key c \major
      \time 4/4
      \clef treble
      \relative c'' {
        \repeat volta 2 {
          r8 e e d e d e d
          \section
          c1
          r4 c8 c d4 c
          a4 g2.
          r8 a a a b a b c
          d1
          r4 e8 e e4 d
          d4 c2.
        }
        \repeat volta 2 {
          r4 c d8 d e4
          \section
          f1
          r4 f8 f f f f4
          e1
          r4 e8 e f4 e
          d1
        }
        \alternative {
          {
            r4 d8 d c4 d
            e1
          }
          {
            r4 e8 e e4 d
            c1 
          }
        }
      }
      \section
      r1 \bar "|."
    }
    \addlyrics {
      \lyricmode {
        \repeat volta 2 {
          Se co -- me -- çar -- mos a o -- rar,
          Es -- se tem -- plo tre -- me!
          Se co -- me -- çar -- mos a o -- rar,
          fa -- la-- re -- mos lín -- guas!
        }

        \repeat volta 2 {
          E -- li -- as o -- rou!
          E o fo -- go bai -- xou!
          Jo -- su -- é o -- rou
        }
        \alternative {
          {
            e o Sol pa -- rou,
          }
          {
            e o Sol pa -- rou.
          }
        }
      }
    }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 134 }
}