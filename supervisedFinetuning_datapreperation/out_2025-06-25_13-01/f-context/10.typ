
#let template(body) = {
  set text(lang: "fr")
  upper(body)
}

#set text(lang: "de")
#context [
  #show: template // 'template' uses its context and does not see the applied language changes.
  #text.lang // will print 'de'
  #context text.lang // will print 'fr'
]
