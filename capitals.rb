# an array of state hashes
states =[{
    name: "Alabama",
    capital: "Montgomery"
# }, {
#     name: "Alaska",
#     capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }, {
#     name: "Arkansas",
#     capital: "Little Rock"
# }, {
#     name: "California",
#     capital: "Sacramento"
# }, {
#     name: "Colorado",
#     capital: "Denver"
# }, {
#     name: "Connecticut",
#     capital: "Hartford"
# }, {
#     name: "Delaware",
#     capital: "Dover"
# }, {
#     name: "Florida",
#     capital: "Tallahassee"
# }, {
#     name: "Georgia",
#     capital: "Atlanta"
# }, {
#     name: "Hawaii",
#     capital: "Honolulu"
# }, {
#     name: "Idaho",
#     capital: "Boise"
# }, {
#     name: "Illinois",
#     capital: "Springfield"
# }, {
#     name: "Indiana",
#     capital: "Indianapolis"
# }, {
#     name: "Iowa",
#     capital: "Des Moines"
# }, {
#     name: "Kansas",
#     capital: "Topeka"
# }, {
#     name: "Kentucky",
#     capital: "Frankfort"
# }, {
#     name: "Louisiana",
#     capital: "Baton Rouge"
# }, {
#     name: "Maine",
#     capital: "Augusta"
# }, {
#     name: "Maryland",
#     capital: "Annapolis"
# }, {
#     name: "Massachusetts",
#     capital: "Boston"
# }, {
#     name: "Michigan",
#     capital: "Lansing"
# }, {
#     name: "Minnesota",
#     capital: "St. Paul"
# }, {
#     name: "Mississippi",
#     capital: "Jackson"
# }, {
#     name: "Missouri",
#     capital: "Jefferson City"
# }, {
#     name: "Montana",
#     capital: "Helena"
# }, {
#     name: "Nebraska",
#     capital: "Lincoln"
# }, {
#     name: "Nevada",
#     capital: "Carson City"
# }, {
#     name: "New Hampshire",
#     capital: "Concord"
# }, {
#     name: "New Jersey",
#     capital: "Trenton"
# }, {
#     name: "New Mexico",
#     capital: "Santa Fe"
# }, {
#     name: "New York",
#     capital: "Albany"
# }, {
#     name: "North Carolina",
#     capital: "Raleigh"
# }, {
#     name: "North Dakota",
#     capital: "Bismarck"
# }, {
#     name: "Ohio",
#     capital: "Columbus"
# }, {
#     name: "Oklahoma",
#     capital: "Oklahoma City"
# }, {
#     name: "Oregon",
#     capital: "Salem"
# }, {
#     name: "Pennsylvania",
#     capital: "Harrisburg"
# }, {
#     name: "Rhode Island",
#     capital: "Providence"
# }, {
#     name: "South Carolina",
#     capital: "Columbia"
# }, {
#     name: "South Dakota",
#     capital: "Pierre"
# }, {
#     name: "Tennessee",
#     capital: "Nashville"
# }, {
#     name: "Texas",
#     capital: "Austin"
# }, {
#     name: "Utah",
#     capital: "Salt Lake City"
# }, {
#     name: "Vermont",
#     capital: "Montpelier"
# }, {
#     name: "Virginia",
#     capital: "Richmond"
# }, {
#     name: "Washington",
#     capital: "Olympia"
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


# shuffle states during each turn
states = states.shuffle

# states to include a key to keep track of number of times they get it right and the number of times they get it wrong
game_states = states.each do |state|
  state[:name] = state[:name]
  state[:capital] = state[:capital]
  state[:correct] = 0
  state[:wrong] = 0
  state[:times_displayed] = 0
end

puts game_states

# # puts welcome message
# puts "Welcome to Let's Learn our State Capitals! We'll give you a state, then you'll type what you think the capital is. Type 'play' to begin!"
#
# while true
#   start = gets.chomp
#   break if start == "play" || start == "Play"
# end

# loop through all 50 states
while true
  states.each do |state|
    puts state[:name]
    # prompt user to name the capital of the state
    guess = gets.chomp
      if guess == state[:capital]
        puts "You're right!"
        # if answer = correct, ++ score of correct key
        state[:correct] += 1
      else
        puts "Sorry, you're wrong!"
        # if answer = wrong, ++ score of wrong key
        state[:wrong] += 1
      end
      # keep track of times prompt shows up
      state[:times_displayed] += 1
      puts state
      # after prompt, display message telling user how many times they answered correctly out of the total number of times answered
      puts "You got #{state[:correct]} of #{state[:times_displayed]} right"
  end
  # after 50 states have shown, ask user to play again
  puts "Want to play again? Yes/No"
  answer = gets.chomp
  # if yes, start with states where wrong key is highest
  states = states.sort_by{ |state| state[:wrong]}.reverse
  puts states
  if answer == "No"
    break puts "Alright, see you later!"
  end
end
