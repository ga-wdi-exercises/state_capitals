# # an array of state hashes
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
# states = [
#   {
#       name: "Alabama",
#       capital: "Montgomery"
#   }, {
#       name: "Hawaii",
#       capital: "Honolulu"
#   }, {
#       name: "Minnesota",
#       capital: "St. Paul"
#   }
# ]

correct_states = [

]

incorrect_states = [

]

score = {
  correct: 0,
  incorrect: 0
}

#Welcome
puts "Welcome to the State Capital Game. I say a state and you give the capital. Type 'play' to start the game!"

def play_game(states, score)
  #if answer is correct, display msg, increment correct, show answers (remove state from array?)
  states = states.shuffle
  states.each do |state|
    #Prompt user for capital of state
    puts "#{state[:name]}?" #"(Enter 'h' for a hint)"
    user_answer = gets.chomp
    if user_answer == state[:capital]
      score[:correct] += 1
      puts "****Correct!****"
      puts score
    # elsif user_answer == "h"
    #   puts "#{state[:name]}? Hint: #{state[:name[0..2]]}"
    else
      score[:incorrect] += 1
      puts "Wrong! The answer is #{state[:capital]}."
      puts score

    end
  end
end

#starts game
play = gets.chomp
if play == "play"
  puts "Great, let's play!"
  play_game(states, score)
end
puts "Your score is #{score[:correct]}/50"
puts "Would you like to play again? y/n"
play_again = gets.chomp
if play_again == "y"
  play_game(states, score)
elsif play_again == "n"
  puts "Thanks for playing!"
end

#
