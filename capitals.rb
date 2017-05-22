# an array of state hashes
states = [
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arizona",
    capital: "Phoenix"
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
}
]

# Make sure the states don't appear in alphabetical order in the prompts.
states.shuffle!

puts "Welcome to the State Capital Game!"

# Initialize new keys in the Hashes that store the number of times a user gets a capital `correct` and the number of times the answer is `wrong`.
states = states.each do |state|
  state[:correct_guesses] = 0
  state[:wrong_guesses] = 0
end


def questionAnswer(stateArray)

  stateArray.each do |state|
# Through all 50 states, prompt the user to name the capital of the state.
  puts "What is the capital of #{state[:name]}?"
  answer = gets.chomp

# If the answer is correct, display a message saying so, and increment the `correct` key.
  if answer == state[:capital]
    puts "Correct answer"
      state[:correct_guesses] +=1

# After each prompt, display a message telling the reader how many times the state was answered correctly out of the total number of times answered.
    puts "You have #{state[:correct_guesses]} correct answer out of #{state[:correct_guesses] + state[:wrong_guesses]} "

# If the answer is wrong, display a message saying so, and increment the `wrong` key.
  elsif answer != state[:capital]
    puts "Wrong answer"
     state[:wrong_guesses] +=1

    puts "You have #{state[:wrong_guesses]} wrong answer"
  end
 end
end

questionAnswer(states)

# Once the user has gone through all 50 states, ask them if they'd like to play again.

puts "Do you want to play again?"
wannaPlay = gets.chomp

if wannaPlay == "Yes"
   questionAnswer(states)
end
