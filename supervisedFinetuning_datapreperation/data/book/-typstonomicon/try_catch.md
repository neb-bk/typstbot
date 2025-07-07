# Try & Catch
```typ
// author: laurmaedje
// Renders an image or a placeholder if it doesn't exist.
// Don’t try this at home, kids!
#let maybe-image(path, ..args) = context {
  let path-label = label(path)
   let first-time = query((context {}).func()).len() == 0
   if first-time or query(path-label).len() > 0 {
    [#image(path, ..args)#path-label]
  } else {
    rect(width: 50%, height: 5em, fill: luma(235), stroke: 1pt)[
      #set align(center + horizon)
      Could not find #raw(path)
    ]
  }
}

#maybe-image("../tiger.jpg")
#maybe-image("../tiger1.jpg")
```
