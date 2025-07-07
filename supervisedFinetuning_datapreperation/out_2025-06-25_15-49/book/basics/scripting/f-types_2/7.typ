
#let person_data = (
  name: "Alice",
  age: 30,
  city: "Wonderland",
)

// Accessing values
#"Name: " + person_data.name + "\n"
#"Age (using at()): " + person_data.at("age") + "\n"

// Checking if a key exists
#"Does 'city' exist? " + repr("city" in person_data) + "\n"
#"Does 'occupation' exist? " + repr("occupation" in person_data) + "\n"

// 'Updating' by adding a new field (creates a new dictionary)
// The 'insert' method returns a new dictionary with the added key-value pair.
#let updated_person_data = person_data.insert("occupation", "Adventurer")

#"Original dictionary (unchanged): " + repr(person_data) + "\n"
#"New dictionary with occupation: " + repr(updated_person_data)
