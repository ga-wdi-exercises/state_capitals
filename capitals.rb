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

# Welcome message
puts "Let's learn out state capitals. For each state, enter the name of the state's
capital and press Enter. Press enter to begin:"
gets

# Add keys to each state for tracking correct / incorrect guesses
states.map! do |state|
  state[:correct] = 0
  state[:incorrect] = 0
  state
end

# Randomize the order of the initial game
states.shuffle!

# A method to promp the question based on what state is the argument and return the user's answer
def ask_question state
  answer = nil
  until answer != 'h' && answer != nil
    puts "What is the capital of #{state[:name]}? Enter h for a hint:"
    answer = gets.chomp
    if answer == 'h'
      hint state
    end
  end
  answer
end

# A method to print out the first three letters of the state as a hint
def hint state
  puts state[:capital][0..2]
end

# A method to compare the user's answer to the state's capital name and print out the result
def check_answer answer, state
  if answer.downcase == state[:capital].downcase
    state[:correct] += 1
    puts "Correct"
  else
    state[:incorrect] += 1
    puts "Incorrect"
  end
  total = state[:correct] + state[:incorrect]
  puts "You have gotten this one correct #{state[:correct]} times out of #{total} times"
end

# A method that asks the user if they want to play again and returns a boolean
def play_again?
  puts "Would you like to play again? (y / n)"
  play_again = gets.chomp
  if play_again == 'n'
    false
  else
    true
  end
end

# The loop to run the game until the user chooses not to play again
loop do
  states.each do |state|
    answer = ask_question state
    check_answer answer, state
  end

  if !play_again?
    break
  end

  # Reorder the array after each round from least correct answers to most
  states.sort! { |state| state[:correct]}
end
