# an array of state hashes
# states =[
# {
#     name: "Alabama",
#     capital: "Montgomery"
# }, {
#     name: "Alaska",
#     capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }, {
#     name: "Arkansas",
#     capital: "Little Rock"
# }, {
#     name: "California",
#     capital: "Sacramento"
# }, {
#     name: "Colorado",
#     capital: "Denver"
# }, {
#     name: "Connecticut",
#     capital: "Hartford"
# }, {
#     name: "Delaware",
#     capital: "Dover"
# }, {
#     name: "Florida",
#     capital: "Tallahassee"
# }, {
#     name: "Georgia",
#     capital: "Atlanta"
# }, {
#     name: "Hawaii",
#     capital: "Honolulu"
# }, {
#     name: "Idaho",
#     capital: "Boise"
# }, {
#     name: "Illinois",
#     capital: "Springfield"
# }, {
#     name: "Indiana",
#     capital: "Indianapolis"
# }, {
#     name: "Iowa",
#     capital: "Des Moines"
# }, {
#     name: "Kansas",
#     capital: "Topeka"
# }, {
#     name: "Kentucky",
#     capital: "Frankfort"
# }, {
#     name: "Louisiana",
#     capital: "Baton Rouge"
# }, {
#     name: "Maine",
#     capital: "Augusta"
# }, {
#     name: "Maryland",
#     capital: "Annapolis"
# }, {
#     name: "Massachusetts",
#     capital: "Boston"
# }, {
#     name: "Michigan",
#     capital: "Lansing"
# }, {
#     name: "Minnesota",
#     capital: "St. Paul"
# }, {
#     name: "Mississippi",
#     capital: "Jackson"
# }, {
#     name: "Missouri",
#     capital: "Jefferson City"
# }, {
#     name: "Montana",
#     capital: "Helena"
# }, {
#     name: "Nebraska",
#     capital: "Lincoln"
# }, {
#     name: "Nevada",
#     capital: "Carson City"
# }, {
#     name: "New Hampshire",
#     capital: "Concord"
# }, {
#     name: "New Jersey",
#     capital: "Trenton"
# }, {
#     name: "New Mexico",
#     capital: "Santa Fe"
# }, {
#     name: "New York",
#     capital: "Albany"
# }, {
#     name: "North Carolina",
#     capital: "Raleigh"
# }, {
#     name: "North Dakota",
#     capital: "Bismarck"
# }, {
#     name: "Ohio",
#     capital: "Columbus"
# }, {
#     name: "Oklahoma",
#     capital: "Oklahoma City"
# }, {
#     name: "Oregon",
#     capital: "Salem"
# }, {
#     name: "Pennsylvania",
#     capital: "Harrisburg"
# }, {
#     name: "Rhode Island",
#     capital: "Providence"
# }, {
#     name: "South Carolina",
#     capital: "Columbia"
# }, {
#     name: "South Dakota",
#     capital: "Pierre"
# }, {
#     name: "Tennessee",
#     capital: "Nashville"
# }, {
#     name: "Texas",
#     capital: "Austin"
# }, {
#     name: "Utah",
#     capital: "Salt Lake City"
# }, {
#     name: "Vermont",
#     capital: "Montpelier"
# }, {
#     name: "Virginia",
#     capital: "Richmond"
# }, {
#     name: "Washington",
#     capital: "Olympia"
# }, {
#     name: "West Virginia",
#     capital: "Charleston"
# }, {
#     name: "Wisconsin",
#     capital: "Madison"
# }, {
#     name: "Wyoming",
#     capital: "Cheyenne"
# }]


states =[
{
    name: "Alabama",
    capital: "Montgomery",
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
    name: "Kansas",
    capital: "Topeka",
    correct: 0,
    wrong: 0,
    guesses: 0
}]




states.shuffle!

puts "Welcome to the Capitals learning game."

index = 0
game_score = 0
while index < states.length
    puts "What is the capital of #{states[index][:name]}?"
    user_input = gets.chomp
    if user_input == states[index][:capital]
    puts "Correct!"
    states[index][:correct] += 1
    states[index][:guesses] += 1
    game_score += 1
    puts "This state was answered correctly #{states[index][:correct]} times out of #{states[index][:guesses]}."
    puts "Your overall game score is #{game_score}."
    else
    puts "Wrong"
    states[index][:wrong] += 1
    states[index][:guesses] += 1
    puts "This state was answered correctly #{states[index][:correct]} times out of #{states[index][:guesses]}."
    puts "Your overall game score is #{game_score}."
end
    index += 1

end

puts states
puts total_guesses