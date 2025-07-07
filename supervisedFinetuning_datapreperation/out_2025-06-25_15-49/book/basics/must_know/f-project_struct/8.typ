
    // template.typ

    #let document-template = doc => {
        set text(font: "DejaVu Sans Mono")
        doc
    }
    

    // main.typ

    #import "template.typ": document-template
    #show: document-template

    = My Document

    #include("chapters/intro.typ")
    #include("chapters/conclusion.typ")
    

    // chapters/intro.typ

    #import "../template.typ": *

    #set heading(level: 1, numbering: "1.")
    = Introduction

    This is the introductory content written in the custom font.
    

    // chapters/conclusion.typ

    #import "../template.typ": *

    #set heading(level: 1, numbering: "2.")
    = Conclusion

    This is the concluding content, also using the custom font.
    