
// This will cause a compilation error because 'velocity' is not a defined command.
// $ velocity * time $

// Correct way to treat 'velocity' and 'time' as multi-letter variables:
$ italic("velocity") * italic("time") $

// Or if you define them as Typst variables in code:
#let velocity = 5
#let time = 10
$ #velocity * #time $
