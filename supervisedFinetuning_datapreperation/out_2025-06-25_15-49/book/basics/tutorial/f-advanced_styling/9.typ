
#set page(
  // Header is that small thing on top
  header: align(
    right + horizon,
    [Some header there]
  ),
  height: 12cm
)

#align(center, text(17pt)[
  *Important title*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Some author \\
    Some Institute \\
    #link("mailto:some@mail.edu")
  ],
  align(center)[
    Another author \\
    Another Institute \\
    #link("mailto:another@mail.edu")
  ]
)
