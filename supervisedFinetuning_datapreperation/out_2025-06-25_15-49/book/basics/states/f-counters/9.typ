
#let uninitialized_counter = counter("my_uninitialized")
#context uninitialized_counter.display() // Displays 0 (default)

#let numbered_counter = counter("my_numbered")
#set numbered_counter(numbering: "1.") // Set a numbering format for a custom counter
#context numbered_counter.display() // May still display 0 or 1 depending on internal logic for initial state with numbering

// To truly start counting, you need to step or update it:
#numbered_counter.step()
#context numbered_counter.display() // Displays 1.
