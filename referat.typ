// Constants section
#let stud_name = ""
#let report_number = ""
#let prof_name = ""
#let prof_title = ""
#let year = "2026"
#let var_number = ""


#set page(
  paper: "a4",
  margin: (left: 3cm, right: 1.5cm, top: 2cm, bottom: 2.25cm),
  number-align: center,
  numbering: "1",
)

#set text(
  font: "Times New Roman",
  size: 12pt,
  lang: "ro",
)

#set par(
  justify: true,
  spacing: 1.5em,
  // first-line-indent: 1.5em,
)

#set enum(spacing: 1.5em)
#show link: set text(fill: rgb(0, 110, 255))

#show raw: set text(font: "Consolas", size: 12pt)
#set raw(lang: none, theme: none)

#set figure(numbering: "3.1", kind: "figura", supplement: "Figura")
#set figure.caption(separator: " — ")

#let figura(source, width, caption) = {
  align(center + top)[
    #figure(
      image(source, width: width),
      caption: caption,
    )
  ]
}

#show title: set text(size: 24pt)
#show title: set align(center)

#align(center + top)[
  #image("utm_logo.png", height: 7%)
]

#align(center)[
  #set heading(outlined: false)
  #box(width: 80%)[
    #text(size: 14pt)[
      #set par(spacing: 1em)
      *MINISTERUL EDUCAȚIEI ȘI CERCETĂRII \ AL REPUBLICII MOLDOVA*

      *Universitatea Tehnică a Moldovei*

      *Facultatea Calculatoare, Informatică și Microelectronică*

      *Departamentul Ingineria Sistemelor*
    ]
  ]

  #v(10em)
  #text(size: 14pt)[*#stud_name*]
  #v(1em)
  #title[Raport de activitate nr. #report_number]
  #v(2em)
  #text(size: 20pt)[
    *_la cursul de „Programarea Calculatoarelor”_*
  ]
  #text(size: 14pt)[#align(right + bottom)[
    Verificat:\
    *#prof_name #prof_title*\
    Departamentul Ingineria Sistemelor,\
    Facultatea FCIM, UTM\
  ]]
  #v(7em)
  #align(center + bottom)[
    *Chișinău - #year*
  ]
]

#pagebreak()

#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set text(size: 16pt)

#set heading(outlined: false)
= CUPRINS
#set heading(outlined: true)
#show outline.entry.where(level: 1): set text(weight: "bold")
#show outline.entry.where(level: 2): set block(above: 1.2em, below: 1.2em)
#outline(title: "", indent: 3em)

#pagebreak()

#show heading.where(level: 1): it => {
  v(1em)
  it
  v(2em)
}
#show heading.where(level: 2): it => {
  v(0.5em)
  it
  v(1em)
}

#set heading(numbering: (..nums) => {
  if nums.pos().len() == 2 {
    numbering("1.1", ..nums)
  }
})

// -----------------------------------------------------------------------

= TEMA LUCRĂRII

Disciplina: Programarea Calculatoarelor.

Tema: ...

== Scopul lucrării

#set par(first-line-indent: (amount: 3em, all: true))

Scopul prezentei lucrări constă în ...

== Noțiuni teoretice


= CONDIȚIA PROBLEMEI

== Varianta #var_number

Enunțul problemei / exercițiului: ...

= REALIZAREA LUCRĂRII

== Codul programului

Programul a fost elaborat în limbajul C. Codul este prezentat mai jos, însoțit de comentarii relevante:

== Rezultatele execuției programului

În urma compilării și executării programului au fost obținute rezultatele prezentate în figurile de mai jos.

#pagebreak()

#pagebreak()

= CONCLUZII


#pagebreak()

= BIBLIOGRAFIE
