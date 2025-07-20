#set text(font: "Klee One", size: 10pt)
#set page(paper: "a5", numbering: "-1-")
#show heading: it => [
    #set text(font: "Zen Kurenaido")
    #it.body
]

#include "chapters/02_variable.typ"