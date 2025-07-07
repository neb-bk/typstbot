
#let project-info(project_name, ..contributors) = {
  // Access positional arguments from the 'contributors' arguments object
  let contributor_list = contributors
    .pos()
    .join(", ", last: " and ")

  [*Project:* #project_name]
  [\_Contributors:_ #contributor_list]
}

#project-info("Typst Document Automation", "Alice", "Bob", "Charlie")
#project-info("My Research Paper", "Dr. Jane Doe")
