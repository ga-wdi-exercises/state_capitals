# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Alaska",
    capital: "Juneau",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Arizona",
    capital: "Phoenix",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Arkansas",
    capital: "Little Rock",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "California",
    capital: "Sacramento",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Colorado",
    capital: "Denver",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Connecticut",
    capital: "Hartford",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Delaware",
    capital: "Dover",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Florida",
    capital: "Tallahassee",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Georgia",
    capital: "Atlanta",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Hawaii",
    capital: "Honolulu",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Idaho",
    capital: "Boise",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Illinois",
    capital: "Springfield",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Indiana",
    capital: "Indianapolis",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Iowa",
    capital: "Des Moines",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Kansas",
    capital: "Topeka",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Kentucky",
    capital: "Frankfort",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Louisiana",
    capital: "Baton Rouge",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Maine",
    capital: "Augusta",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Maryland",
    capital: "Annapolis",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Massachusetts",
    capital: "Boston",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Michigan",
    capital: "Lansing",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Minnesota",
    capital: "St. Paul",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Mississippi",
    capital: "Jackson",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Missouri",
    capital: "Jefferson City",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Montana",
    capital: "Helena",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Nebraska",
    capital: "Lincoln",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Nevada",
    capital: "Carson City",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "New Hampshire",
    capital: "Concord",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "New Jersey",
    capital: "Trenton",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "New Mexico",
    capital: "Santa Fe",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "New York",
    capital: "Albany",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "North Carolina",
    capital: "Raleigh",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "North Dakota",
    capital: "Bismarck",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Ohio",
    capital: "Columbus",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Oklahoma",
    capital: "Oklahoma City",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Oregon",
    capital: "Salem",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Pennsylvania",
    capital: "Harrisburg",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Rhode Island",
    capital: "Providence",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "South Carolina",
    capital: "Columbia",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "South Dakota",
    capital: "Pierre",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Tennessee",
    capital: "Nashville",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Texas",
    capital: "Austin",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Utah",
    capital: "Salt Lake City",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Vermont",
    capital: "Montpelier",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Virginia",
    capital: "Richmond",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Washington",
    capital: "Olympia",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "West Virginia",
    capital: "Charleston",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Wisconsin",
    capital: "Madison",
    correct: 0,
    wrong: 0,
    guesses: 0
}, {
    name: "Wyoming",
    capital: "Cheyenne",
    correct: 0,
    wrong: 0,
    guesses: 0
}]



states.shuffle!

puts "Welcome to the Capitals learning game."


game_score = 0
in_play = true

while in_play 
    states.each do |state|
        puts "What is the capital of #{state[:name]}?"
        user_input = gets.chomp
        if user_input == state[:capital]
            puts "Correct!"
            state[:correct] += 1
            state[:guesses] += 1
            game_score += 1
            puts "This state was answered correctly #{state[:correct]} times out of #{state[:guesses]}."
            puts "Your overall game score is #{game_score}."
        else
            puts "Wrong"
            state[:wrong] += 1
            state[:guesses] += 1
            puts "This state was answered correctly #{state[:correct]} times out of #{state[:guesses]}."
            puts "Your overall game score is #{game_score}."
        end
        
    end
    puts "Would you like to play again? Enter yes or no."
    play_again = gets.chomp
    if play_again == "yes"
    in_play = true
    else
    in_play = false
    puts "Goodbye."
    end
end
