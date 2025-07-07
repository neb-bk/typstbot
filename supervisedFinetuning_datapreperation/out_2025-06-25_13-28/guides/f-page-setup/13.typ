
#lorem(10)
#counter(page).update(n => n + 5)

// This will return the value of the page counter after the update (e.g., 6 if starting from 1).
#text(blue)[Counter value: #counter(page).get().first()]

// This will return the actual physical page number (e.g., 2 if it's the second page).
#text(red)[Actual page: #context here().page()]
