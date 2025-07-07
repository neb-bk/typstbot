
#let total_count = state("count", 0)

// Increment the counter at various points
#total_count.update(x => x + 1)
First point. 

#total_count.update(x => x + 1)
Second point. <second>

#total_count.update(x => x + 1)
Third point. <third>

#v(1em)
// Query the state *at* the location of 'second' label
#let second_loc = query(<second>).first().location()

#if second_loc != none {
  [Value of count at 'second' point: #context total_count.at(second_loc)]
} else {
  [Label 'second' not found.]
}

// Query the state *at* the location of 'third' label
#let third_loc = query(<third>).first().location()

#if third_loc != none {
  [Value of count at 'third' point: #context total_count.at(third_loc)]
} else {
  [Label 'third' not found.]
}

#total_count.update(x => x + 1)
Fourth point.
