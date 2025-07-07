
#let counter = state("my-counter", 0)

Initial value: #context counter.get() \

#context counter.update(5) // Update the state to 5

Value after direct update: #context counter.get() \


#let total = state("accumulator", 10)

Initial total: #context total.get() \

// Add 7 to the current total
#context total.update(current => current + 7) \

Total after adding 7: #context total.get() \

// Multiply by 2
#context total.update(current => current * 2) \

Total after multiplying by 2: #context total.get()


#let x = state("example-state", 0)
#context x.get() // Outputs 0

#let _ = x.update(3) // The update instruction is created but not put into document flow
// nothing happens here visible to the layout engine yet

#context x.get() // Still outputs 0, because the update instruction was not laid out

#repr(x.update(3)) // This shows what the content instruction looks like internally

#context x.update(3) // Now the instruction is laid out
#context x.get() // Finally outputs 3!
