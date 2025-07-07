
#let total_sum = 0
#let start_num = 1
#let end_num = 5

#for i in range(start_num, end_num + 1) {
    total_sum += i
    [Adding #i to sum. Current sum: #total_sum]
}

[The final sum from #start_num to #end_num is: #total_sum]
