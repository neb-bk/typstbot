
#let product_info = (
  id: "TYP001",
  name: "Typst Guide",
  price: 25.50,
  in_stock: true,
)

// Get all keys
#let all_keys = product_info.keys()
#"All keys: " + repr(all_keys) + "\n"

// Get all values
#let all_values = product_info.values()
#"All values: " + repr(all_values) + "\n"

// Get the number of entries
#"Number of entries: " + repr(product_info.len())
