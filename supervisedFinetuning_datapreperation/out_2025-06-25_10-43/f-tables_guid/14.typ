
#figure(
  caption: [My Long Table],
  show: it => block(breakable: true, it),
  table(
    columns: 2,
    table.header[Header 1][Header 2],
    ..list.generate(20, i => ([Data #i], [More Data #i])),
  ),
)
