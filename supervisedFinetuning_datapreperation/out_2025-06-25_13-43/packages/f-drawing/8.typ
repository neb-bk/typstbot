
// author: LDemetrios (adapted for clarity)
#import "@preview/cetz:0.3.4"

#cetz.canvas({
  // Define the y-coordinates for nodes in the left and right partitions
  let left-nodes = (a:2, b:1, d:-1, e:-2)
  let right-nodes = (p:2.7, q: 1.8, r: 0.9, s: -.3, t: -1.5, u: -2.4)
  // Define the edges as string pairs "from_node,to_node"
  let edges = "as,bq,dq,et".split(",")

  // Drawing parameters
  let ell-width = 1.5 // Ellipse width
  let ell-height = 3 // Ellipse height
  let dist = 5 // Distance between the centers of the two ellipses
  let dot-radius = 0.1 // Radius of individual nodes
  let dot-clr = blue // Color of nodes and labels

  import cetz.draw: *

  // Draw the ellipses representing the partitions
  circle((-dist/2, 0), radius:(ell-width ,  ell-height), stroke: dot-clr.lighten(70%))
  circle((+dist/2, 0), radius:(ell-width ,  ell-height), stroke: dot-clr.lighten(70%))

  // Draw and label nodes in the left partition
  for (name, y) in left-nodes {
    circle((-dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
    content(name, anchor:"east", pad(right:.7em, text(fill:dot-clr, name)))
  }

  // Draw and label nodes in the right partition
  for (name, y) in right-nodes {
    circle((dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
    content(name, anchor:"west", pad(left:.7em, text(fill:dot-clr, name)))
  }

  // Draw directed edges between nodes
  for edge in edges {
    let from = edge.at(0)
    let to = edge.at(1)
    line(from, to, stroke: black)
    mark(from, to, symbol: ">",  fill: black) // Add arrow mark to the end of the line
  }

  // Add a central label for the application type
  content((0, - ell-height - 0.5), text(fill:blue, size: 1.1em)[BIPARTITE GRAPH], anchor:"south")
})
