
// Positional argument: "SCREAM"
#lower("SCREAM") 

// Named arguments: width, height, stroke
#rect(
  width: 2cm,
  height: 1cm,
  stroke: red,
)

// Content argument in parentheses:
#underline([_Alternative A_])

// Content argument after parentheses (syntactic sugar):
Typst is an #underline[alternative]
to LaTeX.

// Content argument after empty parentheses (syntactic sugar):
#rect(fill: aqua)[Get started here!]
