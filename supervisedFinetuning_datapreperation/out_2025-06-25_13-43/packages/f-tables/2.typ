
#import "@preview/tada:0.2.0": TableData, to-tablex, from-records, from-rows

#let record-data = (
  (item: "Laptop", price: 1200, stock: 5),
  (item: "Mouse", price: 25, stock: 50),
  (item: "Keyboard", price: 75, stock: 20),
)

#let row-data = (
  ("Monitor", 300, 15),
  ("Webcam", 50, 30),
  ("Headphones", 100, 25),
)

#let record-td = from-records(record-data)
#text(1.2em)[Products (from records)]
#to-tablex(record-td)

#let row-td = from-rows(row-data)
#text(1.2em)[Accessories (from rows - note unknown field names)]
#to-tablex(row-td)
