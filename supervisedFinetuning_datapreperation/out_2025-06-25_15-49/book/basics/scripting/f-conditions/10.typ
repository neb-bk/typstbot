
#let n = 5 // Change this number to test
#let factorial = 1

#if n < 0 {
  [Error: Factorial is not defined for negative numbers.]
} else if n == 0 {
  [The factorial of 0 is 1.]
} else {
  #let i = 1
  #while i <= n {
    factorial *= i
    i += 1
  }
  [The factorial of #n is #factorial.]
}
