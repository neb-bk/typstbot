
    #let my_c = counter("my_complex_counter")
    #context my_c.display() // Initial: 0
    #my_c.update(5) // Set to 5
    #context my_c.display() // 5
    #my_c.update(n => n * 2) // Multiply by 2
    #context my_c.display() // 10
    

    #let my_s = counter("my_simple_counter")
    #context my_s.display() // Initial: 0
    #my_s.step() // Increment by 1
    #context my_s.display() // 1
    #my_s.step() // Increment by 1 again
    #context my_s.display() // 2
    