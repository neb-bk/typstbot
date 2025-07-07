
#let nested_array = (1, (2, 3), (4, (5, 6)))

// Flatten the nested array
#let flat_array = nested_array.flatten()

#"Original nested array: " + repr(nested_array) + "\n"
#"Flattened array: " + repr(flat_array)
