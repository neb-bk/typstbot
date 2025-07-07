
#let values = (1, 7, 4, -3, 2)
#let dict = (
  name: "Typst",
  born: 2019,
)

// This is a comparison, not a modification
#"Result of (values.at(0) = 3): " + repr((values.at(0) = 3)) + "\n"
#"Original values array after expression: " + repr(values) + " (unchanged)\n"

// This is a comparison, not a modification
#"Result of (dict.launch = 20): " + repr((dict.launch = 20)) + "\n"
#"Original dictionary after expression: " + repr(dict) + " (unchanged)"
