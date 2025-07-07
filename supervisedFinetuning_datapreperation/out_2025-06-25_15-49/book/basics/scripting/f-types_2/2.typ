
#let values = (1, 7, 4, -3, 2)

#"Original Array: " + repr(values) + "\n"
// Access the first element (index 0)
#"First element (index 0): " + repr(values.at(0)) + "\n"

// Access the last element (index -1)
#"Last element (index -1): " + repr(values.at(-1)) + "\n"

// Find the index of the first even number
#"Index of the first even number: " + repr(values.find(calc.even))
