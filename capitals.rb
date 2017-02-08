require "pry"

# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix",
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Delaware",
    capital: "Dover"
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
}, {
    name: "Washington",
    capital: "Olympia"
}, {
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]

# write a shuffle the states
  states = states.shuffle

# create a welcome message to introduce the player to the game
  puts "Hey, here's your chance to test your wits with knowing the capitals of every state in America."

# initialize new keys in the hashes that store the number of times a user gets a capital correct + wrong
# tally on the number of correct and incorrect answers for each state
  states.each do |state|
    state[:num_correct_answer] = 0
    state [:num_wrong_answer] = 0
  end

# prompt the user to identify the capital associated with a given state
# make the player play through all 50 states by prompting the player to name the capital of each state
while true
  states.each do |state|
    puts "What is the capital of " + state[:name] + "?"

    answer = gets.chomp

# if the player answer is correct, display a message saying so
if answer.upcase == state[:capital].upcase
  puts "Correct Answer!"
  state[:num_correct_answer] +=1
# if the player answer is wrong, display a message saying so
else
  puts "Your absolutely wrong, the capital is #{state[:capital]}"
  state[:num_wrong_answer] +=1
end

# let the player see their record on guesses
# after each prompt, display a message telling the reader how many times the state was answered correctly out of the number of times answered
  total = state[:num_correct_answer] + state[:num_wrong_answer]
  puts "You got #{{state[:num_correct_answer]} out of {total}} on the first try"
end

# after getting through all 50 states one time, ask the user if they would like to play again
puts "That was a great first try, would you like to play again (Y/N)?"
  answer = gets.chomp
  break if answer.upcase == "N"

# shuffle the states to make it challenging if the player decides to continue to play
  states = states.sort_by {|state| state[:num_correct_answer]}

end

binding.pry
puts "end of file"
