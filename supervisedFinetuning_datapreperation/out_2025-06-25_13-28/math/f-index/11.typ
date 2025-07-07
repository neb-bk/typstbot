
#let alpha = 0.5
#let my-function(x) = x^2 + 2x + 1

$ y = #alpha x + #my-function(z) $

#let customVar = 5
#let MyCustomCommand(val) = val / 2

// Usage in math mode
$ F = m * #customVar + #MyCustomCommand(10) $
