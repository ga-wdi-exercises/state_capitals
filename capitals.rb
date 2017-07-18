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

 # Provide a welcome message to introduce the player to the game
puts "Welcome players! Let's play guess the state Capital!"
overal_score = 0
# add correct and incorrect keys to Hashes
states.each do |state|
  state[:correct] = 0
  state[:incorrect] = 0
end
repeat = "Yes"
while repeat == "Yes" do

# Make sure the states don't appear in alphabetical order in the prompts. This will make the game a bit more challenging for the user.
states.shuffle!
states.sort_by! do |state|
    state[:correct]
end
# useing for loop with state name
for state in states do
  # prompt user for capital
  puts "enter capital of #{state[:name]}"
#input = gets.chomp
input= gets.chomp
# if input == [:capital]
if input == state[:capital]
  # the answer is correct, display a message
  puts "You are correct #{state[:capital]} is the capital of #{state[:name]}!"
  # [:correct]
  overal_score +=1
state[:correct] +=1
# Add a hint functionality that prints the first 3 letters of a capita



# esle
else
  # [:incorrect]
  state[:incorrect] +=1
  # the answer is wrong, display a message
  puts "You are wrong #{state[:capital]} is the capital of #{state[:name]}!"
end
# display the correct and incorrect responses for each state
state[:total] = state[:correct] + state[:incorrect]
puts "You've answered this capital correct #{state[:correct]} out of #{state[:total]}!"

# display a running tally for each prompt
puts "Your running tally is " + overal_score
end
# Once the user has gone through all 50 states, ask them if they'd like to play again.
# how would the play respond
#what if they say yes. ruby isn't a synchrise
puts "You are done with this round, do you want to play again?"
repeat = gets.chomp
end
# if your selsects play again
# pirotize the higher incorrect
# puts state[:captials][0, 3]
