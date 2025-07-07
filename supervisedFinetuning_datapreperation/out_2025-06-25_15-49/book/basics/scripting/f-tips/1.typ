
#let dict_a = (x: 1, y: 2, z: 3)
#let dict_b = (y: 2, x: 1, z: 3) // Same content, different order

#block[
  Are `dict_a` and `dict_b` equal using `==`? #(dict_a == dict_b)
  Do `dict_a` and `dict_b` have the same pairs (content)? #(dict_a.pairs() == dict_b.pairs())
]
