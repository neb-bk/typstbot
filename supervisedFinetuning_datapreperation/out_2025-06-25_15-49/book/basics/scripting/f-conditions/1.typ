
#let item_count = 5

#if item_count < 10 {
  [You have a small number of items in your cart.]
}

#let greeting = "Hello"

#if greeting == "Hi" [
  "Informal greeting detected."
]

"Current item count: " + str(item_count)
