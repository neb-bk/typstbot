
#set page(width: auto, height: auto)
#let document(body) = {
  body

  // This block will only be included when compiling to HTML
  if target == html {
    html.elem("div", {
      style: "border: 1px solid #007bff; padding: 10px; margin-top: 20px; background-color: #e0f7fa; border-radius: 5px;",
      html.elem("p", [
        #set text(fill: #0056b3)
        *Web Exclusive:* For interactive examples and the latest updates, please visit our official website: 
        #link("https://typst.app", "typst.app")
      ])
    })
  }
}

#document[
  = My Project Overview

  This document provides a comprehensive overview of our latest project.

  == Introduction
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

  == Key Features
  - Feature A
  - Feature B
  - Feature C

  Thank you for reading!
]
