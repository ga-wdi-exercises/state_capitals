# an array of state hashes
states =[{
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




# Welcome message
#
# shuffle the capitals list
# pull one out
# ask user what the capitals of states[:name] is
# lower case answer and check against lower case states[:capital]
# add new key for correct or wrong +1 to either
# puts how many times the user has gotten it right or wrong
# once finished, ask if they want to play again
# if so the prompts appear in order of most wrong to least
#


# shuffle up the states
def states_shuffle(states)
	states.map do |state|
		state[:correct] = 0
		state[:wrong] = 0
	end
	return states.shuffle
end

# question the user for capital of given state
def state_question(state)
	state_name = state[:name]
	state_cap = state[:capital]
	puts "What is the capital of #{state_name}?"
	user_cap_guess = gets.chomp
	if user_cap_guess == state_cap
		correct(state)
		puts "Your score for #{state[:name]} is #{state[:correct]} correct and #{state[:wrong]} wrong"
	else
		wrong(state)
		puts "Your score for #{state[:name]} is #{state[:correct]} correct and #{state[:wrong]} wrong"
	end
end

# handles correct answers
def correct(state)
		state[:correct] += 1
end


# handles wrong answers
def wrong(state)
		state[:wrong] += 1
end


# On play game again, order states based on how many times they got
# something wrong
def play_again_states_order(states)
	sorted_states = states.sort_by{|w| w[:correct]} 
	return sorted_states
end

# Play the game
def play(states)
	puts "Welcome to the state capitals game!" 
	states = states_shuffle(states)
	state_index = 0
	states.each do 
		state_question(states[state_index])
		state_index += 1
	end
	puts "You have gone through all the states! Would you like to play again? (yes) (no)"
	play_again = gets.chomp
		while play_again == 'yes'
			state_index = 0
			states = play_again_states_order(states)
			states.each do
				state_question(states[state_index])
				state_index += 1
			end
			puts "You have gone through all the states! Would you like to play again? (yes) (no)"
			play_again = gets.chomp
		end
end

play(states)
