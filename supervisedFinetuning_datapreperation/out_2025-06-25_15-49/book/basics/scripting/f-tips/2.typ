
    #let user_profile = (name: "Alice", age: 30, city: "New York")
    #block[
      Does "name" exist in `user_profile`? #("name" in user_profile)
      Does "email" exist in `user_profile`? #("email" in user_profile)
    ]
    

    #let product_info = (id: 101, name: "Laptop", price: 1200)
    #block[
      Does "name" exist using `contains`? #(product_info.keys().contains("name"))
      Does "stock" exist using `contains`? #(product_info.keys().contains("stock"))
    ]
    