
    #let s = state("my-counter", 0)
    #s.update(1)
    #context s.get() // Correct: Retrieves the updated value (1) when laid out
    // #s.get() // Incorrect: Will cause an error because it's not in context
    

#let x = state("x-val", 0)

Before context: #context x.get() // Current value of x (0)

#context {
  x.update(3) // This update is scheduled but not visible *within* this context block
  str(x.get()) // Still shows the value *before* this context block's update takes effect for itself
}

After context: #context x.get() // Now shows the updated value (3)
