
#let grades = csv("grades.csv")
#table(
  columns: grades.first().len(),
  ..grades,
)
