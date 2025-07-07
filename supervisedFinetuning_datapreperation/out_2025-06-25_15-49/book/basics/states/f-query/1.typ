
#set text(8pt)

#let check_future = {
  let future_label_loc = query(<future-point>).first()
  if future_label_loc != none {
    [A future point was found at location: ] + repr(future_label_loc)
  } else {
    [No future point with label <future-point> was found yet.]
  }
}

#box(fill: aqua, inset: 4pt, width: 100%, check_future)

#v(1em)

// This label is defined *after* the #box that queries it.
*This is a point later in the document.* <future-point>
