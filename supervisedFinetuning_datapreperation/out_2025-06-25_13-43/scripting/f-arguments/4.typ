
#let show-args(label, ..args) = {
  set text(size: 0.8em, font: "Source Code Pro")
  [#label
  Positional arguments: #args.pos().join(", ", last: " and ")
  Named arguments: #args.named()
  ]
}

#show-args("First Call:", 1, "hello", true, width: 50%, color: blue)
#show-args("Second Call:", "A", 100, x: 10pt, y: 20pt)
