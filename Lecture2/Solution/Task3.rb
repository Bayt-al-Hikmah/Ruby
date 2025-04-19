
#	- Merge with another hash `{ hobbies: ["reading", "coding"] }`
#	- Delete the city information from the hash
person = {
    name: "Ali",
    city: "Kouba",
    age:20
}
person.store(:occupation, "Hacker")
puts "Keys :"
puts person.keys
puts "Person has :age key: #{person.has_key?(:age)}"
person.merge!({ hobbies: ["reading", "coding"] })
person.delete(:city)
puts "Keys after change :"
puts person.keys