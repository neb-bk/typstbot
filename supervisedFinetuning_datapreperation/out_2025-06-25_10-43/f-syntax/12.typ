
//In the main file:
#let logo = image("mylogo.svg")
#package-function(logo: logo) // Pass the image to the package

//In the package:
#let package-function(logo: image) = { ... }
