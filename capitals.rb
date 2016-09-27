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



# quiz function
def quiz states, quiz_length

	# shuffle states
	states.shuffle!

	# set test stack
	testStack = states[0...quiz_length]
	p testStack

	# for every state in quiz..
	testStack.each_with_index do |state, i|

		# ask user question
		print "\nWhat is the capital of #{state[:name]}? "
		res = gets.chomp.downcase
		p res
		# quit test
		break if res == 'quit' || res == 'exit'

		# validate answer
		if res == state[:capital].downcase
			states[i][:correct] += 1
			p "Correct!"
		else
			states[i][:wrong] += 1
			p "Nope!"
		end
	end
end



# Welcome message
print "\n\"Let's Learn our State Capitals!\" What is your name: "
name = gets.chomp

print "\nWelcome #{name}. Enter quiz length (1 to 50): "
quiz_length = gets.chomp.to_i

capitals = "capitals"
until quiz_length >= 1 && quiz_length <= 50
	if quiz_length < 1
		puts "\nSorry, #{quiz_length} is too low. Quiz length must be between 1 and 50, inclusive. Enter quiz length: "
		quiz_length = gets.chomp.to_i
	elsif quiz_length > 50
		puts "\nSorry, #{quiz_length} is too high. Quiz length must be between 1 and 50, inclusive. Enter quiz length: "
		quiz_length = gets.chomp.to_i
	end
end

if quiz_length == 1
	capitals = "capital"
end

puts "\nGood choice! Let's start the quiz.
Remember, no need to worry about case-sensitivity in your responses.
Enter 'quit' or 'exit' at any time to end the quiz."
print "\nAre you ready to begin your quiz on #{quiz_length} state #{capitals} (y/n)? "

input = gets.chomp.downcase

if input == 'n' || input == 'quit' || input == 'exit'
	puts "Goodbye."
elsif input == 'y'
	states.each do |state|
		state[:correct] = 0
		state[:wrong] = 0
	end
	quiz states, quiz_length
end

p states

# TODO
