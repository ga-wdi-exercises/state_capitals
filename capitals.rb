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


#

# initialize corrct and incorrect for each state
states.each do |item|
	item[:correct] = 0
	item[:incorrect] = 0
 end


#Initialize new keys in the hashes that store the number of times
# a user gets a capital correct and the number of times the answer is wrong.
# Through all 50 states, prompt the user to name the capital of the state.

# If the answer is correct, display a message saying so, and increment the correct key.
# If the answer is wrong, display a message saying so, and increment the wrong key.
# After each prompt, display a message telling the reader how many times the state was answered correctly out of the total number of times answered.
# Once the user has gone through all 50 states, ask them if they'd like to play again.

game_over=false
#Provide a welcome message to introduce the player to the game.
puts "Welcome to the State Capital Guessing game.  You will be asked"
puts " to guess the Capital city of a state"

loop do
 	states.shuffle!
    break if game_over

states.each do |item|
	puts "Correct of #{item[:correct]} for  #{item[:name]}"
	puts "Incorrect of #{item[:incorrect]} for  #{item[:name]}"
 	puts "Capitol of #{item[:name]} "
    my_guess = gets.chomp!
    puts my_guess
	if my_guess == item[:capital]
		puts "Correct answer"
	    item[:correct] +=1
	  else
	  	puts"Incorrect, the correct answer is #{item[:capital]}"
   		item[:incorrect] +=1
 	end # if
 end # each

 puts "Do you want to play again (Y or N)"
 play_again=gets.chomp!
 play_again.upcase!
 game_over=!(play_again=="Y")
end # loop
