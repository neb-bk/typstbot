
// template.typ

#let template = doc => {
    set page(header: "My super document")
    show "physics": "magic"
    doc
}

#let info-block = block.with(stroke: blue, fill: blue.lighten(70%))
#let author = "@sitandr"
