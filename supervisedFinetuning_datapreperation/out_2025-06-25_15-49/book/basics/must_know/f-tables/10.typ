
#table(
  columns: (auto, 1fr), // First column width determined by content, second takes remaining space
  align: (right, left), // Right-align labels, left-align values
  inset: 5pt, // Padding inside cells
  row-gutter: 8pt, // Vertical space between rows
  column-gutter: 15pt, // Horizontal space between columns
  [Name:], [Alice],
  [Email:], [alice\@example.com],
  [Phone:], [+123 456 7890],
  [Address:], [123 Typst Lane, Doc City],
)
