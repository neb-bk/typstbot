
#let alert_block(title, content) = block(
  fill: luma(230),
  stroke: 1pt + orange,
  inset: 1em,
  radius: 6pt,
)[
  #text(weight: "bold", size: 1.1em, fill: orange)[#title]
  #line()
  #content
]

#alert_block("Warning: Critical Error", "This action cannot be undone. Proceed with caution.")

#alert_block("Note: Important Update", "System maintenance is scheduled for next Tuesday.")
