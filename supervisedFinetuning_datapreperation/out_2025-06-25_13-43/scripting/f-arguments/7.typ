
#let my-function(required_arg, ..args) = {
  let optional_arg1 = args.pos().at(0, default: "default_value_1") // Get first positional arg or default
  let optional_arg2 = args.pos().at(1, default: "default_value_2") // Get second positional arg or default

  [
    Required: #required_arg
    Optional 1: #optional_arg1
    Optional 2: #optional_arg2
  ]
}

#set text(font: "Source Code Pro")
#my-function("A")
#my-function("B", "custom_value_1")
#my-function("C", "custom_value_1", "custom_value_2")
