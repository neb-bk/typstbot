
// Defining a function using arrow syntax
#let make_bold_arrow = (content) => text(weight: "bold")[#content]

// Defining the same function using direct syntax (equivalent)
#let make_bold_direct(content) = text(weight: "bold")[#content]

#make_bold_arrow("This is bold via arrow syntax.")
#make_bold_direct("This is bold via direct syntax.")
