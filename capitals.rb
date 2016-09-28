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



# Get desired quiz length from user
def get_quiz_length
	print "Enter quiz length (1 to 50): "
	quiz_length = gets.chomp.to_i

	until quiz_length >= 1 && quiz_length <= 50
		if quiz_length < 1
			puts "\nSorry, #{quiz_length} is too low. Quiz length must be between 1 and 50, inclusive. Enter replay length: "
			quiz_length = gets.chomp.to_i
		elsif quiz_length > 50
			puts "\nSorry, #{quiz_length} is too high. Quiz length must be between 1 and 50, inclusive. Enter replay length: "
			quiz_length = gets.chomp.to_i
		end
	end
	puts "#{quiz_length} is a great choice!"
	return quiz_length
end



# Print score
def print_score states, i
	puts "Score for #{states[i][:name]}: Correct = #{states[i][:correct]}, Incorrect = #{states[i][:wrong]}."
end



# Show prompt to user, get response
def prompt states, i, state

	print "\n##{i + 1}: What is the capital of #{state[:name]}? "
	res = gets.chomp.downcase

	# Validate answer
	if res == state[:capital].downcase
		states[i][:correct] += 1
		p "Correct!"
		print_score states, i
	elsif res == 'hint'
		# Show hint
		print state[:capital][0,3]
		prompt states, i, state
	elsif res == 'skip'
		# Skip state
	else
		states[i][:wrong] += 1
		p "Nope!"
		print_score states, i
		prompt states, i, state
	end
end



# Shuffle card
def shuffleOrder states
	states.shuffle!
end



# For replay, order cards by num wrong answers
def replayOrder states
	return states.sort_by { |state| state[:wrong]}.reverse
end



# Quiz function
def quiz states, quiz_length

	# Set test stack
	test_stack = states[0...quiz_length]

	# For every state in quiz..
	test_stack.each_with_index do |state, i|

		# Ask user the question
		prompt states, i, state
	end

	# At end, ask if user wants to replay
	print "\nWould you like to replay (y/n)? "
	replay = gets.chomp
	if replay == 'y'
		puts "Let's try again."
		quiz_length = get_quiz_length
		p states
		states = replayOrder states
		p states
		quiz states, quiz_length
	end
end



# Initialize game
def init_game states

	# Welcome message
	print "\n\"Let's Learn our State Capitals!\" What is your name: "
	name = gets.chomp
	puts "Welcome #{name}."

	# Ask user for quiz length
	quiz_length = get_quiz_length

	# Plural fix
	capitals = "capitals"
	if quiz_length == 1
		capitals = "capital"
	end

	# Instructions
	puts "\nLet's start the quiz.
	Remember, no need to worry about case-sensitivity in your responses.
	Enter 'hint' at any time to display a hint.
	Enter 'skip' at any time to move to the next question."

	# Ask if user is ready
	print "\nAre you ready to begin your quiz on #{quiz_length} state #{capitals} (y/n)? "
	input = gets.chomp.downcase
	if input == 'y'

		# Add scorekeeping
		states.each do |state|
			state[:correct] = 0
			state[:wrong] = 0
		end

		# Shuffle states
		shuffleOrder states

		# Start Quiz
		quiz states, quiz_length
	else
		puts "Goodbye."
	end
end



#Start game
init_game states

# Print final score
states.sort_by { |state| state[:name]}
states.each do |state|
	puts "Score for #{state[:name]}: Correct = #{state[:correct]}, Incorrect = #{state[:wrong]}."
end

p 'done'
