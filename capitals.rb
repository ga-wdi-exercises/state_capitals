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

puts "Welcome, ready to test your knowledge of state capitals?"

play = true
#shuffle states
states = states.shuffle
total_correct = 0
#create new symboles for each sate
states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
  state[:total] = 0
end

#while loop to continue game logic
while play == true do

  states.each do |state|
    #select a state to have the player guess and take in their input
    state_to_guess = state[:name]
    puts "What is the capital of #{state_to_guess}? (type 'hint' for a hint)."
    guess = gets.chomp
    #determine if the player got the capital correct
    #logic for bonus 3
    if guess == 'hint'
      capital_start = state[:capital][0,3]
      puts "The capital starts with #{capital_start}."
      puts "What is the capital of #{state_to_guess}?"
      guess = gets.chomp
    end

    if guess == state[:capital]
      state[:correct] += 1
      state[:total] += 1
      total_correct += 1
      puts "Correct. You have gotten this state correct #{state[:correct]} out of #{state[:total]} attempts"
      puts "You have gotten #{total_correct} states right this round."
      puts "----------------"

    else
      state[:wrong] += 1
      state[:total] += 1
      puts "Wrong. You have gotten this state correct #{state[:correct]} out of #{state[:total]} attempts"
      puts "You have gotten #{total_correct} states right this round."
      puts "----------------"
    end

  end
  #Asks the player if they want to play again
  puts "You got #{total_correct} correct this round. Do you want to play again?"
  again = gets.chomp
  if (again != 'yes') && (again != 'Yes') && (again != 'y') && (again != 'Y')
    play = false
  else
    #resets total correct variable for new round
    total_correct = 0
    #reorders state list by number of wrong answers
    states = states.sort_by{ |item| item[:correct] }
  end
end
