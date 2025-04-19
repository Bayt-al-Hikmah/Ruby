# 1 
word = "Developer"
puts "First character #{word[0]}"
puts "Last character #{word[-1]}"
puts "wors as all upper case #{word.upcase}"

# 2
phrase = "I love Python"
new_phrase = phrase.gsub("Python", "Ruby")
puts "Phrase after change: #{new_phrase}"

# 3
sentence = "Learning Ruby is fun"
puts "Is \"Ruby\" included on the sentence #{sentence.include?("Ruby")}"
puts "The sentence has #{sentence.length} characters"
