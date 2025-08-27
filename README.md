# Livreto A5

## Layout

```lilypond
\version "2.24.4"

#(set-global-staff-size 16) % Padrão é 20

\paper {
  #(set-paper-size "a5") % Tamanho da página
}
```

## Margens

```lilypond
\paper {
  #(set-paper-size "a5") % Tamanho do papel (A5)
  two-sided = ##t        % Ativa margens diferentes para páginas pares/ímpares
  inner-margin = 15\mm   % Margem interna (lado da encadernação)
  outer-margin = 10\mm   % Margem externa
  top-margin = 10\mm     % Margem superior
  bottom-margin = 10\mm  % Margem Inferior
  binding-offset = 5\mm  % Offset adicional para não cortar na encadernação
}
```

## Cabeçalho & rodapé

```lilypond
\paper {
  oddHeaderMarkup = \markup { texto de cabeçalho em páginas ímpares }
  evenHeaderMarkup = \markup { texto de cabeçalho em páginas páres }
  oddFooterMarkup = \markup { texto de rodapé em páginas ímpares }
  evenFooterMarkup = \markup { texto de rodapé em páginas páres }
}
```

## Páginas

```lilypond
\fromproperty #'page:page-number-string
```

```lilypond
\paper {
  oddHeaderMarkup = \markup { \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup { \fromproperty #'page:page-number-string }
  oddFooterMarkup = \markup { \fromproperty #'page:page-number-string }
  evenFooterMarkup = \markup { \fromproperty #'page:page-number-string }
}
```

## Book

```lilypond
\version "2.24.4"

\book {
  \bookOutputName "Nome do pdf"
  \bookpart {
    ...
  }
  \bookpart {
    ...
  }
  \bookpart {
    ...
  }
}
```

## Índice

```lilypond
\bookpart {
  \markuplist \table-of-contents
}
```

```lilypond
\tocItem \markup "Título que aparece no índice"
```

```lilypond
```lilypond
\version "2.24.4"

\paper {
  tocItemMarkup = \tocItemWithDotsMarkup
}

\book {
  \bookOutputName "Nome do pdf"
  \bookpart {
    \markuplist \table-of-contents
  }
  \bookpart {
    \tocItem \markup "Título que aparece no índice"
    \score {
      ...
    }
  }
  \bookpart {
    \tocItem \markup "Título que aparece no índice"
    \score {
      ...
    }
  }
  \bookpart {
    \tocItem \markup "Título que aparece no índice"
    \score {
      ...
    }
  }
}
```

dentro de `\paper`

```lilypond
tocTitleMarkup = "Índice"
```

Título de índice personalizado

```lilypond
  tocTitleMarkup = \markup \column {
    \fill-line { \null \fontsize #6 \bold "Índice" \null }
    \vspace #2
  }
```

Exemplo de cabeçalho personlaizado

```lilypond
  oddHeaderMarkup = \markup \column {
    \fill-line {
      \fontsize #1 "Texto de cabeçalho"
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
      \fontsize #1 "Texto de cabeçalho"
    }
    \vspace #-0.75
    \draw-hline
    \vspace #1
  }
```

Exemplo de rodapé personalizado

```lilypond
  oddFooterMarkup = \markup {
    \vspace #1.5
    \fill-line { \null \fontsize #1 \fromproperty #'page:page-number-string }
  }
  
  evenFooterMarkup = \markup {
    \vspace #1.5
    \fill-line { \fontsize #1 \fromproperty #'page:page-number-string \null }
  }
```

## Capa

```lilypond
\bookpart {
    \paper {
      print-page-number = ##f
      oddHeaderMarkup = ##f
      evenHeaderMarkup = ##f
      oddFooterMarkup = ##f
      evenFooterMarkup = ##f
      two-sided = ##f
      top-margin = 20\mm
      bottom-margin = 20\mm
      left-margin = 20\mm
      right-margin = 20\mm
    }

    \markup {
      \fill-line {
        \center-column {
          \vspace #6
          \fontsize #8 \bold "TÍTULO"
          \null
          \fontsize #8 \bold "TÍTULO"
          \vspace #3
          \fontsize #4 "SUB TÍTULO"
          \vspace #4V
          \score {
            \new DrumStaff {
              \magnifyStaff #1.5
              \relative c' { ... }
              \layout { indent = 0}
          }
          \vspace #6
          \fontsize #3 \bold "...autor..."
          \vspace #2
          \fontsize #0 \concat { \char ##x00a9 " 2025" }
          \fontsize #0 "...licença de uso..."
        }
      }
    }
  }
```

## Textos

```lilypond

```

## Compilação
```bash
sudo apt install lilypond
```

```bash
lilypond 'seu arquivo ly.ly'
```

### Booklet

```bash
sudo apt install texlive
```

```bash
sudo apt install texlive-extra-utils
```

#### pdfjam

```cbash
pdfjam --booklet true --landscape --suffix booklet --a4paper 'seu arquivo.pdf'
```
#### pdfbook2

```bash
pdfbook2 -p a4 'seu arquivo.pdf'
```
