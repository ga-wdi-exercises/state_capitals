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
	states.shuffle!
	testStack = states[0...quiz_length]
	p testStack
	states.each { |state|
		puts "What is the capital of #{state[:name]}?"
		res = gets.chomp.downcase
		if res == state[:name].downcase
			p "Correct!"
		end
	}
end



# Welcome message
puts "\"Let's Learn our State Capitals!\" What is your name: "
name = gets.chomp

puts "Welcome #{name}. Enter quiz length (1 to 50): "
quiz_length = gets.chomp.to_i

capitals = "capitals"
until quiz_length >= 1 && quiz_length <= 50
	if quiz_length < 1
		puts "Sorry, #{quiz_length} is too low. Quiz length must be between 1 and 50, inclusive. Enter quiz length: "
		quiz_length = gets.chomp.to_i
	elsif quiz_length > 50
		puts "Sorry, #{quiz_length} is too high. Quiz length must be between 1 and 50, inclusive. Enter quiz length: "
		quiz_length = gets.chomp.to_i
	end
end

if quiz_length == 1
	capitals = "capital"
end

puts "Good choice! Let's start the quiz.\n
Remember, do need to worry about case-sensitivity in your responses.\n
Enter 'quit' or 'exit' at any time to end the quiz.\n
Are you ready to begin your quiz on #{quiz_length} state #{capitals}? (y/n)"

input = gets.chomp.downcase

if input == 'n' || input == 'quit' || input == 'exit'
	puts "Goodbye."
elsif input == 'y'
	quiz states, quiz_length
end

# TODO
