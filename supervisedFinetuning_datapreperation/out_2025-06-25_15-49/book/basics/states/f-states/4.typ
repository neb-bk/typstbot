
    #let x = state("my-shared-state-id", 5)
    #let y = state("my-shared-state-id", 15)

    // Both x and y refer to the same state. The effective initial value will be 15
    // because y's definition appears later in the code.
    Initial value from x: #context x.get() \
    Initial value from y: #context y.get()
    

    #let func_a(val) = {
      let s = state("counter-state", 0) // Shared ID
      s.update(current => current + val)
      context s.get()
    }

    #let func_b(val) = {
      let s = state("counter-state", 0) // Same shared ID
      s.update(current => current * val)
      context s.get()
    }

    First call (func_a(2)): #func_a(2) \
    Second call (func_b(3)): #func_b(3) \
    Third call (func_a(10)): #func_a(10)
    