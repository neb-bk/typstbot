
#grid(
  columns: (1fr, 2fr, 1fr),
  column-gutter: 1em, // Add some space between columns
  [
    #rect(height: 2em, fill: luma(220))[Column 1]
  ],
  [
    #rect(height: 2em, fill: luma(200))[Column 2 is wider]
  ],
  [
    #rect(height: 2em, fill: luma(180))[Column 3]
  ]
)
