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

correct = []
incorrect = []

playAgain = true

puts "Hi! Welcome to the states capitals quiz!"

while playAgain == true
totalScore = 0
i = 0
states.shuffle!
	while i < states.length
	puts "What is the capital of #{states[i][:name]}?"
	user_input = gets.chomp

  		if user_input == states[i][:capital]
    		correct.push(states[i][:name])
    		numCorrect = correct.count(states[i][:name])
			numIncorrect = incorrect.count(states[i][:name])
    		puts "Correct! You answered this question correctly #{numCorrect} times and incorrectly #{numIncorrect} times"
    		i = i +1
        totalScore = totalScore + 1
        puts "Your total score this round is #{totalScore}"
  		else
  			incorrect.push(states[i][:name])
  			numCorrect = correct.count(states[i][:name])
			numIncorrect = incorrect.count(states[i][:name])
  			puts "Ah thats incorrect, you answered this question correctly #{numCorrect} times and incorrectly #{numIncorrect} times "
  			i = i+1
  		end
	end

		puts "Would you like to play again?"
		answer = gets.chomp
			if answer == "yes"
				playAgain = true
			else
				playAgain = false
			end
end

# welcome message
# shuffle cards
#
# #what is the capital of (STATE)
#
#     if correct then correct = +1
#     if incorrect then incoorect + 1
# increase tally for state was that was answered incorrecly (add to an arra)
# next question
#
#   if states[i]=50 then wanna play again? use gets.chomp
