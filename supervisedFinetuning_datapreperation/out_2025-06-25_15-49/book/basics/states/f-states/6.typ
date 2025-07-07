
#set text(lang: "en")

// 1. Create a state variable for the score
#let current_score = state("game-score", 0)

// 2. Define a function to add points and display the new score
#let add_points(points: 0) = {
  // Update the state: add 'points' to the current score
  // The update operation produces content, so we must put it in context
  context current_score.update(score => score + points)

  // Display the current score after the update has been scheduled
  // Accessing the state must also be within context
  [Added #points point(s). New score: #context current_score.get().]
}

// --- Document Content --- 

#heading(level: 2)[Game Score Tracker]

Initial Score: #context current_score.get() \

#add_points(10) \
#add_points(5) \
#add_points(12) \

// Let's deduct some points
#add_points(-7) \

#add_points(20) \

Final Score: #context current_score.get()
