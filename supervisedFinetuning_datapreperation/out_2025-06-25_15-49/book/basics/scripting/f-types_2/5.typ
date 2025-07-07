
#let letters = ("H", "e", "l", "l", "o")
#let words = ("Hello", "World")

// Join letters to form a word without spaces
#"Letters joined: " + repr(letters.join("")) + "\n"

// Join words with a space, and ' and ' before the last one (example from docs, adjusted)
#"Words joined with a space and ' and ': " + repr(words.join(", ", last: " and ")) + "\n"

// Combining letters to form "Hello World" (requires creating an array of strings, then joining)
#let hello_array = ("H", "e", "l", "l", "o")
#let world_array = ("W", "o", "r", "l", "d")

#let hello_world_string = hello_array.join("") + " " + world_array.join("")
#"Combined 'Hello World' string: " + repr(hello_world_string)
