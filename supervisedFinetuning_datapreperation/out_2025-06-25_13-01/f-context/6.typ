
#set text(lang: "de")
#context [
  #set text(lang: "fr")
  #text.lang  // will print 'fr'
  #context text.lang // will print 'fr'
]
