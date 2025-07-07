
#let values = (1, 7, 4, -3, 2, -8, 10)

// Step 1: Filter to keep only odd numbers
#let odd_values = values.filter(calc.odd)
#"Original values: " + repr(values) + "\n"
#"Filtered (odd) values: " + repr(odd_values) + "\n"

// Step 2: Map to get absolute values (from the original values for demonstration)
// If you wanted to map the *filtered* values, you'd do: odd_values.map(calc.abs)
#let absolute_values = values.map(calc.abs)
#"Absolute values of original: " + repr(absolute_values)


#let values = (1, 7, 4, -3, 2, -8, 10)
#let filtered_and_mapped = values.filter(calc.odd).map(calc.abs)
#"Values filtered for odd, then absolute: " + repr(filtered_and_mapped)
