
#import "@preview/tada:0.2.0": TableData, to-tablex

#let column-data = (
  name: ("Apple", "Banana", "Cherry"),
  price: (0.75, 0.50, 1.20),
  quantity: (10, 15, 8),
)

#let fruit-td = TableData(data: column-data)

#text(1.2em)[Fruit Inventory (from column-data)]
#to-tablex(fruit-td)
