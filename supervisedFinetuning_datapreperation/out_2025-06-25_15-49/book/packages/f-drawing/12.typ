
    let left = (a:2, b:1, d:-1, e:-2)
    let right = (p:2.7, q: 1.8, r: 0.9, s: -.3, t: -1.5, u: -2.4)
    let edges = "as,bq,dq,et".split(",")
    

    circle((-dist/2, 0), radius:(ell-width ,  ell-height))
    circle((+dist/2, 0), radius:(ell-width ,  ell-height))
    

    for (name, y) in left {
      circle((-dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
      content(name, anchor:"east", pad(right:.7em, text(fill:dot-clr, name)))
    }
    

    for edge in edges {
      let from = edge.at(0)
      let to = edge.at(1)
      line(from, to)
      mark(from, to, symbol: ">",  fill: black)
    }
    

// Simplified reproduction of the "APPLICATION" example concept
#import "@preview/cetz:0.3.4"

#cetz.canvas({
  let nodes = (
    a: (x:-2.5, y:2), b: (x:-2.5, y:0), c: (x:-2.5, y:-2),
    p: (x:2.5, y:1.5), q: (x:2.5, y:0), r: (x:2.5, y:-1.5)
  )
  let connections = "ap,bq,cq".split(",")

  let dot-radius = 0.15
  let node-clr = blue
  let edge-clr = black

  import cetz.draw: *
  // Draw nodes
  for (name, pos) in nodes {
    circle(pos, radius:dot-radius, fill:node-clr, name:name)
    let anchor-side = if pos.x < 0 {"east"} else {"west"}
    let padding = if pos.x < 0 {right:.7em} else {left:.7em}
    content(name, anchor:anchor-side, pad(padding, text(fill:node-clr, name)))
  }

  // Draw edges
  for conn in connections {
    let from = conn.at(0)
    let to = conn.at(1)
    line(from, to, stroke:edge-clr)
    mark(from, to, symbol: ">", fill: edge-clr)
  }

  content((0, -3), text(fill:blue)[Simplified Graph], anchor:"south")
})
