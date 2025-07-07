
#set page(margin: 1in)

#context {
  let page-width = page.width - 2in // Assuming 1in left/right margin
  let page-height = page.height - 2in // Assuming 1in top/bottom margin

  // Place a logo in the bottom-right corner, offset from the edge
  absolute-place(
    dx: page.width - 1in - 1cm, // 1in right margin, then 1cm from content edge
    dy: page.height - 1in - 1cm, // 1in bottom margin, then 1cm from content edge
    align(right + bottom, text(blue, size: 1.5em, "Company Logo"))
  )

  // Place a "Draft" watermark diagonally across the page
  absolute-place(
    dx: 25%, dy: 25%,
    rotate(30deg, text(luma(70%), size: 5em, "DRAFT"))
  )
}

#lorem(100)
