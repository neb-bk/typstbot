 -norender
#let x = 0
#let compute(expr) = {
  // THIS DOES NOT COMPILE: Variables from outside the function are read-only
  x = eval(
    expr.replace("x", str(x))
  )
  [New value is #x.]
}

#compute("10") \
#compute("x + 3")


#let s = state("x", 0)
#let compute(expr) = [
  // updates x current state with this function
  #s.update(x =>
    eval(expr.replace("x", str(x)))
  )
  // and displays it
  New value is #context s.get().
]

#compute("10") \
#compute("x + 3") \
#compute("x * 2") \
#compute("x - 5")
