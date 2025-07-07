
// template.typ

#let template = doc => {
    set page(header: [My Document Header])
    doc
}

#let info-block = block.with(stroke: blue, fill: blue.lighten(70%))
#let author = "Jane Doe"
