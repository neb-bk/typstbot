
#let theorem_counter = counter("theorem")
#let theorem(content) = block[ // Define a block for the theorem's content
  #theorem_counter.step() // Increment the counter for each new theorem
  *Theorem #context theorem_counter.display():* // Display the current theorem number
  #content
]

#theorem[$1 = 1$] // First theorem

#theorem[
  The quick brown fox jumps over the lazy dog.
  $2 < 3$
] // Second theorem

#let proposition_counter = counter("proposition")
#let proposition(body) = {
  proposition_counter.step()
  text(blue)[Proposition #context proposition_counter.display():] + " " + body
}

#proposition[
  All even numbers are divisible by two.
]
