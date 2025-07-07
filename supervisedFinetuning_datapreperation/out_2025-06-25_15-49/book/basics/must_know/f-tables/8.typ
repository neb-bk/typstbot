
#table(
  columns: 2,
  [
    #set text(size: 16pt, fill: red)
    Hello
  ],
  [
    #set text(size: 8pt, fill: blue)
    World
  ],
  [
    #set text(size: 12pt, fill: green)
    Typst
  ],
  [#text(2em, "Tables")], // Uses text function for a specific size without setting scope
)
