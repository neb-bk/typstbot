
#import "@preview/cetz:0.3.4": canvas, draw

#canvas({
    import draw: *
    circle((90deg, 3), radius: 0, name: "content")
    circle((210deg, 3), radius: 0, name: "structure")
    circle((-30deg, 3), radius: 0, name: "form")
    for (c, a) in (
    ("content", "bottom"),
    ("structure", "top-right"),
    ("form", "top-left")
    ) {
    content(c, box(c + " oriented", inset: 5pt), anchor:
    a)
    }
    stroke(gray + 1.2pt)
    line("content", "structure", "form", close: true)
    for (c, s, f, cont) in (
    (0.5, 0.1, 1, "PostScript"),
    (1, 0, 0.4, "DVI"),
    (0.5, 0.5, 1, "PDF"),
    (0, 0.25, 1, "CSS"),
    (0.5, 1, 0, "XML"),
    (0.5, 1, 0.4, "HTML"),
    (1, 0.2, 0.8, "LaTeX"),
    (1, 0.6, 0.8, "TeX"),
    (0.8, 0.8, 1, "Word"),
    (1, 0.05, 0.05, "ASCII")
    ) {
    content((bary: (content: c, structure: s, form:
    f)),cont)
    }
})
