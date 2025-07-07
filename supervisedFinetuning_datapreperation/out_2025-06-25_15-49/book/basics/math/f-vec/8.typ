
#let fun(..args) = {
    repr(args.pos())
    repr(args.named())
}

$ // Using a math block to display the result for clarity
fun(1, 2; gap: #3em, 4)
$ // This will output: ((1, 2,), (gap: 3em, 4,)) (or similar, depending on exact parsing)
