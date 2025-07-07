
#set text(size: 9pt)

#let yield_cells(n) = {
  for i in range(0, n + 1) {
    for j in range(0, n + 1) {
      let product = if i * j != 0 {
        // math is used for the better look 
        if j <= i { $#{ j * i }$ } 
        else {
          // upper part of the table
          text(gray.darken(50%), str(i * j))
        }
      } else {
        if i == j {
          // the top right corner 
          $times$
        } else {
          // on of them is zero, we are at top/left
          $#{i + j}$
        }
      }
      // this is an array, for loops merge them together
      // into one large array of cells
      (
        table.cell(
          fill: if i == j and j == 0 { orange } // top right corner
          else if i == j { yellow } // the diagonal
          else if i * j == 0 { blue.lighten(50%) }, // multipliers
          product,
        ),
      )
    }
  }
}

#let n = 10
#table(
  columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
)
