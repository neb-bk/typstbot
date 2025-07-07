
#set text(lang: "de")
#context [
  #set text(lang: "fr") // This set rule applies to content *after* it.

  // This first text.lang is still within the outer context's scope, 
  // evaluated before the 'fr' setting takes full effect for *itself*.
  Outer context sees: #text.lang \ 

  // This nested context block defers its evaluation until the 'fr' style is known.
  Inner context sees: #context text.lang
]
