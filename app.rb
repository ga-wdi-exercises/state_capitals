# Welcome message
#
# shuffle the capitals list
# pull one out
# ask user what the captial of states[:name] is
# lower case answer and check against lower case states[:capital]
# add new key for correct or wrong +1 to either
# puts how many times the user has gotten it right or wrong
# once finished, ask if they want to play again
# if so the prompts appear in order of most wrong to least
#


states =[{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}]

# shuffle up the states
def states_shuffle(states)
	return states.shuffle
end

# get random state
def state(states)
	return states.sample
end

# question the user for capital of given state
def state_question(state)
	state_name = state[:name]
	state_cap = state[:capital]
	puts "What is the capital of #{state_name}?"
	user_cap_guess = gets.chomp
	if user_cap_guess == state_cap
		correct(state)
		puts "Your have gotten this capital correct #{state[:correct]} time"
	else
		wrong(state)
		puts "Your have gotten this capital correct #{state[:wrong]} time"
	end
end

# hanldes correct answers
def correct(state)
	puts state.inspect
	if state.key?(:correct)
		state[:correct] += 1
	else
		state[:correct] = 1
	end
end

# handles worng answers
def wrong(state)
	puts state.inspect
	if state.key?(:wrong)
		state[:wrong] += 1
	else
		state[:wrong] = 1
	end
end

def play(states)
	puts "Welcome to the state capitals game!" 
	states = states_shuffle(states)
	states.each do
		state_question(state(states))
	end
	puts states.inspect
end

play(states)
