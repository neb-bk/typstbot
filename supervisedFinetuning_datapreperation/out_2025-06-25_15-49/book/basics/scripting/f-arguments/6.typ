
#let greet(name, ..optional_greeting) = {
  let greeting_text = "Hello"
  if optional_greeting.pos().len() > 0 {
    greeting_text = optional_greeting.pos().at(0)
  }
  
  [#greeting_text, #name!]
}

#greet("Alice")
#greet("Bob", "Hi")
#greet("Charlie", "Greetings")
