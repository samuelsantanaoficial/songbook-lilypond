\version "2.24.4"

\include "my-guitar-fretboards.ly"

\header {
  title = "Caminhando Vou"
  composer = "Luiz de Carvalho"
}

\markup \vspace #1

\score {
  <<
    \new ChordNames {
      \chordmode {
        d dis e e:7 fis:m a a:m b:7
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
        d dis e e:7 fis:m a a:m b:7
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
          e1 e1*2 b,:7 fis1:m b:7
          e1*2 e1 e:7 a,1
          a,1:m e b,:7 e2 d4 dis
        }
        e1
      }
    }
    \new Staff {
      \key e \major
      \time 4/4
      \clef treble
      \relative c'' {
        \repeat volta 2 {
          r4 e8 e e e4 e8 ~
          \section
          e1
          r4 b8 b cis e4 dis8 ~
          dis1
          r4 fis8 fis fis fis4 fis8 ~
          fis1
          r4 b,8 b dis fis4 e8 ~
          e1
          r4 gis8 gis gis gis r gis ~
          gis8 ( fis4 e8 ) ~ e2
          r4 e8 e fis gis r fis ~
          fis8 ( e4 cis8 ) ~ cis2
          r2 a'4 a
          gis4 b,8 b e gis r fis ~
          fis4 b,8 b dis fis r e ~
          e1
        }
        r \bar "|."
      }
    }
    \addlyrics {
      \lyricmode {
        \set stanza = "1."
        Ca -- min -- han -- do vou __
        pa -- ra Ca -- na -- ã __
        Ca -- min -- han -- do vou __
        pa -- ra Ca -- na -- ã __
        Ca -- min -- han -- do vou __
        pa -- ra Ca -- na -- ã __
        Gló -- ria_a Deus, ca -- min -- han -- do vou pa -- ra Ca -- na -- ã! __
      }
    }
    \addlyrics {
      \lyricmode {
        \set stanza = "2."
        Se vo -- cê -- não vai, __
        Não im -- pe -- ça_a mim __
        Se vo -- cê -- não vai, __
        Não im -- pe -- ça_a mim __
        Se vo -- cê -- não vai, __
        Não im -- pe -- ça_a mim __
      }
    }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 130 }
}