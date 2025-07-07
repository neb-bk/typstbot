
#let data = csv("mydata.csv")

#table(
  columns: 2,
  ..for row in data {
    (row.at(0), row.at(1))
  }
)
