
#let generate_product_cells(size) = {
  for i in range(0, size + 1) {
    for j in range(0, size + 1) {
      (table.cell(str(i * j)),)
    }
  }
}

#let n = 2 // For a 3x3 grid (0 to 2)
#table(
  columns: (0.8cm,) * (n + 1),
  rows: (0.8cm,) * (n + 1),
  align: center + horizon,
  inset: 3pt,
  ..generate_product_cells(n),
)
