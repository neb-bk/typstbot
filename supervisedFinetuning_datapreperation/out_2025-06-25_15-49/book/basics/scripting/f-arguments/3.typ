
#let inspect-args(..args) = [
  #set text(font: "monospace")
  Positional arguments provided: #args.pos()\ 
  Named arguments provided: #args.named()
]

#inspect-args(1, "hello", width: 50%, color: blue, 3.14, paragraph: true)
