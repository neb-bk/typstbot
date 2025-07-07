
#let valid_doc_types = ("article", "book", "report")
#let user_doc_type1 = "book"
#let user_doc_type2 = "letter"

#block[
  Is "#user_doc_type1" a valid document type? #(user_doc_type1 in valid_doc_types)
  Is "#user_doc_type2" a valid document type? #(valid_doc_types.contains(user_doc_type2))
]
