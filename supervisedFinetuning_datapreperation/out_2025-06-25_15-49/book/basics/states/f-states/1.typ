
   #let my_state_a = state("unique-id-a")
   The value of my_state_a is initially: #context my_state_a.get()
   

   #let my_state_b = state("unique-id-b", 100)
   The initial value of my_state_b is: #context my_state_b.get()
   

   #let x = state("shared-id", 5)
   #let y = state("shared-id", 10) // This refers to the same state as x

   Value of x: #context x.get() \
   Value of y: #context y.get()
   
   #x.update(20) // Update via x
   New value of x: #context x.get() \
   New value of y: #context y.get() // y reflects the change made via x
   