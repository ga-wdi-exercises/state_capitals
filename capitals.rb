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
}]
# Add a new key to each hash to count correct, wrong, and total
states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
  state[:total] = 0
end

# Create counters for overall score, overall states asked
totalScore = 0
totalStatesAsked = 0

# shuffle the states
states.shuffle!

# Welcome the user to the game
puts "Welcome to the game, are you ready to name some state capitals?"

# Keep going until the user decides to end the game or finishes
while true
  # Prompt the user to identify the capital of the state presented
  states.each do |state|
    puts "What is the capital of #{state[:name]}? Type 'hint' for a clue."
    # Save the user's answer
    answer = gets.chomp
    # Track that this state has been asked
    state[:total] +=1
    # Track the total states that have been asked
    totalStatesAsked +=1
    # BONUS - offer the user a hint of the first 3 letters
    if answer.downcase == 'hint'
      puts state[:capital][0,3]
      puts "What is the capital of #{state[:name]}?"
      answer = gets.chomp
    end
    # Display to the user if answer is correct or wrong and add appropriate count
    if answer.downcase == state[:capital].downcase
      puts "Correct!"
      state[:correct] +=1
      totalScore +=1
    else
      puts "Wrong!"
      state[:wrong] +=1
    end
  # After each state, display a message telling the user how many times it was answered correctly out of total number
  # BONUS - calculate an overall total score, display a running tally for each prompt
  puts "You have successfully identified the capital of #{state[:name]} #{state[:correct]} times out of #{state[:total]} total times. This has brought your total score to #{totalScore}."
  end
  # At the end of 50 states, ask if they want to play again
  puts "You've gotten to the end of the list! You got #{totalScore} right out of #{totalStatesAsked} total states! Would you like to play again? Y/N"
  response = gets.chomp
  if response.downcase == 'n'
    break
  end
  # BONUS - If they play again, set the order to start with the ones they got wrong the most
  states = states.sort_by {|state| state[:wrong]}.reverse!
end
