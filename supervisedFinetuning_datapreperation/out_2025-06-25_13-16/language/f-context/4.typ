
#set heading(numbering: "1.")

= Introduction <intro>
#lorem(5)
#pagebreak()

= Background <back>
#lorem(5)

Background is located at: \
#context {
  let pos = locate(<back>).position()
  // Access page number and coordinates
  "Page " + str(pos.page) + ", X: " + str(pos.x.to-mm()) + "mm, Y: " + str(pos.y.to-mm()) + "mm"
}
