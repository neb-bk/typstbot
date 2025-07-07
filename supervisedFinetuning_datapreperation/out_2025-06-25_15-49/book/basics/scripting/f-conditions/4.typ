
#let current_value = 5
#let limit = 100

#while current_value < limit {
    [Multiplying " + str(current_value) + " by 2. Result: " + str(current_value * 2) + ".]
    current_value *= 2
}
[Final value: " + str(current_value) + ".]
