
// Starting default page counter at 1
#set page(footer: context [Counter: #counter(page).get().first(), Actual Page: #here().page()])

Page 1.
#pagebreak()

// Increment the counter by 5
#counter(page).update(n => n + 5)

Page where counter was incremented.
#pagebreak()

Page after increment. Notice the counter value vs actual page number.
