
#let foo() = 1em.to-absolute() // to-absolute() requires context

// Calling foo() outside context would likely result in an error or unresolved value

#context {
  // Calling foo() inside context allows 1em.to-absolute() to resolve
  // For example, 1em is typically text.size, so this checks if foo() result matches text.size
  foo() == text.size
}
