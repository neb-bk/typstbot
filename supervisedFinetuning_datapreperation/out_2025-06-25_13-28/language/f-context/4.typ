
#let current_lang = context text.lang

#text(size: 1.5em, current_lang) // Evaluates based on default or previously set lang

#set text(lang: "de")
#text(size: 1.5em, current_lang) // Now evaluates to 'de'

#set text(lang: "fr")
#text(size: 1.5em, current_lang) // Now evaluates to 'fr'
