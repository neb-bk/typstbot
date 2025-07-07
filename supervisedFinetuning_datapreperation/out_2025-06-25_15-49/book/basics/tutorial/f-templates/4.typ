
// report-template.typ
#let report-template(body, logo-path: none) = {
  set page(margin: (top: 2em, rest: 1em))
  if logo-path != none {
    image(logo-path, width: 5em)
    v(1em)
  }
  body
}


#import "report-template.typ": report-template

#show: report-template.with(logo-path: "../../../../../image.png")

= My Report
This report includes a company logo.


#import "report-template.typ": report-template

#let my-report-style(..args) = report-template(logo-path: "../../../../../image.png", ..args)
#show: my-report-style

= My Report
This report also includes a company logo.
