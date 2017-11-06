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
}
]

#add two new tracking variables for each state
for state in states
  state[:correct] = 0
  state[:wrong] = 0
end

#track how you've gotten correct (total) out of how many states asked (state_count)
$total = 0
$state_count = 1

#intro message
puts "Welcome to the capitals game!"

# check if they got the right answer
def check_answer(state, response, state_count, total)
  # if correct, up the correct count by one, the total correct by one, and display the message
  if response == state[:capital]
    state[:correct] += 1
    $total += 1
    puts "\nCorrect! You answered this state correctly #{state[:correct]} out of #{state[:correct] + state[:wrong]} times.  This round, you have gotten #{$total} out of #{$state_count} states correct"
  # if they want a hint, print the first three letter and then run check answer again on their new response
  elsif response == "Hint"
    puts "\nThe first three letters are: #{state[:capital][0]}#{state[:capital][1]}#{state[:capital][2]}.  Got it?"
    response = gets.chomp.split.map(&:capitalize).join(' ')
    check_answer(state,response, state_count, total)
  # if wrong, up the wrong count by one and display the message
  else
    state[:wrong] += 1
    puts "\nWrong! You answered this state correctly #{state[:correct]} out of #{state[:correct] + state[:wrong]} times.  This round, you have gotten #{$total} out of #{state_count} states correct"
  end
end

#create the game
def game (states, state_count)
  #for each state...
  for state in states
    #ask the question
    puts "\n#{$state_count}. What is the capital of #{state[:name]}?  Type 'hint' if you want to see three letters"
    #get the response and convert it to first letter capital on each word
    response = gets.chomp.split.map(&:capitalize).join(' ')
    #run check answer
    check_answer(state, response, $state_count, $total)
    #increase the state count tracker by one
    $state_count += 1
  end
  #when done with the game, tell them how many they got right and ask if they want to play again
  puts "\nYou got #{$total} out of #{$state_count} states correct"
  puts "\nDo you want to play again? (Y/N)"
  #reset the variable for a new game
  $total = 0
  $state_count = 1
  response = gets.chomp
  #if they want to play again, run it again...if not, print a goodbye message
  if response == "Y" || response == "y"
    states.sort! { |a,b| b[:wrong] <=> a[:wrong] }
    game(states, $state_count)
  else
    puts "\nUntil next time...keep studying!"
  end
end

#shuffle up the state (for the first time)
states.shuffle!
#run the game!
game(states, $state_count)
