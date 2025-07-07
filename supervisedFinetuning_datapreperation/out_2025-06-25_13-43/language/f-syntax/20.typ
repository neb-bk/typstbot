
    #import "@preview/my-template:0.1.0" as my-template

    // User loads the image from their project path
    #let user_company_logo = image("../../../image.png", width: 50pt)

    #my-template.document(logo: user_company_logo, [
      This is the content of my document, generated using the template.
    ])
    

    // In my-template/template.typ
    #let document(logo: none, body) = {
      set page(margin: 1in)
      #if logo != none {
        align(right, logo)
        v(1em) // Add some vertical space below the logo
      }
      body
    }
    