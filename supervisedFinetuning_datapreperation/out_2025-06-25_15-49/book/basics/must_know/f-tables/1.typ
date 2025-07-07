
#set text(size: 9pt)

#let yield_cells(n) = {
  for i in range(0, n + 1) {
    for j in range(0, n + 1) {
      let product = if i * j != 0 {
        // Math is used for a better look for the main multiplication results
        if j <= i { $#{ j * i }$ }
        else {
          // Upper part of the table, text is grayed out
          text(gray.darken(50%), str(i * j))
        }
      } else {
        if i == j {
          // The top-left corner (0,0)
          $times$
        } else {
          // On one of the axes (i=0 or j=0), sum for demonstration
          $#{i + j}$
        }
      }
      // This generates an array of cells; for loops merge them together
      ( 
        table.cell(
          fill: if i == j and j == 0 { orange } // Top-left corner
          else if i == j { yellow } // The diagonal
          else if i * j == 0 { blue.lighten(50%) }, // Multipliers row/column
          product,
        ),
      )
    }
  }
}

#let n = 4 // For a 5x5 table (indices 0 to 4)
#table(
  columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
)
