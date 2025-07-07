
#let int_val = 5
#let float_val = 5.0

#block[
  Is `int_val` equal to `float_val`? #(int_val == float_val)
  Is the type of `int_val` equal to the type of `float_val`? #(type(int_val) == type(float_val))
  Type of `int_val`: #(type(int_val))
  Type of `float_val`: #(type(float_val))
]
