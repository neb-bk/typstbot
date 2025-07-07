
#let age = 20
#let has_license = true

#if (age >= 18 and has_license) or age >= 21 {
  "You are eligible to drive or purchase alcohol (if 21+)."
} else {
  "You are not yet eligible for driving or alcohol purchase."
}

#let is_weekend = true
#let is_holiday = false

#if is_weekend or is_holiday [
  "Enjoy your day off!"
]

#if not is_weekend [
  "It's a weekday, time to work."
]
