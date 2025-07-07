
#let user_text = "This is a sample sentence."
// #let user_text = "" // Uncomment to test empty case

#if user_text.len() == 0 {
  [The provided text is empty.]
} else {
  [Words in the text:]
  #for word in user_text.split(" ") {
    [- #word]
  }
}
