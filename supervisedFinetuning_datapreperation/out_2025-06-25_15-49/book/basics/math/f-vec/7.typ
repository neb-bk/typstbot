
#let fun(..args) = {
    args.pos()
}

$ // Using a math block to display the result for clarity
fun(1, 2; 3, 4; 6; 8)
$ // This will output: ((1, 2), (3, 4), (6,), (8,))
