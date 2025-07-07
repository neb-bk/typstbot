
#let default_text_color = teal
#let section_font_size = 1.3em

#let custom_section_title(title_text) = {
  text(fill: default_text_color, size: section_font_size, weight: "bold")[#title_text]
}

#custom_section_title("Introduction to Typst")

// You can change the variable and the function's output will adapt
#let default_text_color = purple
#custom_section_title("Advanced Concepts")
