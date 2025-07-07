
#import "lib/treemap.typ": treemap

// Example usage assuming the 'treemap' function exists in the external library
#treemap(
  ( // Example hierarchical data structure
    "Total Sales": (
      "North America": (
        "USA": 150,
        "Canada": 75
      ),
      "Europe": (
        "Germany": 120,
        "France": 90
      )
    )
  ),
  // Additional options or parameters as defined by the treemap package
  label: "Sales Distribution"
)
