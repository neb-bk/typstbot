
#let value = context text.lang

#value // Evaluates with default or previously set language

#set text(lang: "de")
#value // Evaluates with German language

#set text(lang: "fr")
#value // Evaluates with French language
