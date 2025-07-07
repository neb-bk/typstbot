
#let numbers = (1, 2, 3, 4, 5)

// Reverse the array, then square each element
#let reversed_and_squared = numbers.rev().map(x => x * x)

#"Original array: " + repr(numbers) + "\n"
#"Reversed and squared array: " + repr(reversed_and_squared)
