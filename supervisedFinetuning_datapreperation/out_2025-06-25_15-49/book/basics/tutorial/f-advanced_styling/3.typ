
// `redify` is a custom function that applies red color to text.
#let redify(string) = text(red, string)

// `framify` is a custom function that wraps an object in an orange-stroked rectangle.
#let framify(object) = rect(object, stroke: orange)

// Apply redify to the string "the"
#show "the": redify

// Apply framify to everything that follows (wrapping it in a frame)
#show: framify

"the" quick brown fox jumps over "the" lazy dog.
This text is framed.
