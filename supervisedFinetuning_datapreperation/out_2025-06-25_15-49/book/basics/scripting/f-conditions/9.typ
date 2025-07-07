
#let numbers = (2, 7, 4, 9, 12, 6, 15)

#for num in numbers {
  if num > 10 {
    [Found #num, which is greater than 10. Stopping iteration.]
    break
  } else if num > 5 {
    [Processing number: #num]
  } else {
    [Skipping number: #num (not greater than 5).]
  }
}
[Processing complete.]
