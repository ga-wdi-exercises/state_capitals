# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery",

}, {
    name: "Alaska",
    capital: "Juneau",


}, {
    name: "Arizona",
    capital: "Phoenix",

}, {
    name: "Arkansas",
    capital: "Little Rock",

}, {
    name: "California",
    capital: "Sacramento",

}, {
    name: "Colorado",
    capital: "Denver",

}, {
    name: "Connecticut",
    capital: "Hartford",

}, {
    name: "Delaware",
    capital: "Dover",

}, {
    name: "Florida",
    capital: "Tallahassee",

}, {
    name: "Georgia",
    capital: "Atlanta",


# }, {
#     name: "Hawaii",
#     capital: "Honolulu",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Idaho",
#     capital: "Boise",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Illinois",
#     capital: "Springfield",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Indiana",
#     capital: "Indianapolis",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Iowa",
#     capital: "Des Moines",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Kansas",
#     capital: "Topeka",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Kentucky",
#     capital: "Frankfort",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Louisiana",
#     capital: "Baton Rouge",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Maine",
#     capital: "Augusta",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Maryland",
#     capital: "Annapolis",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Massachusetts",
#     capital: "Boston",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Michigan",
#     capital: "Lansing",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Minnesota",
#     capital: "St. Paul",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Mississippi",
#     capital: "Jackson",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Missouri",
#     capital: "Jefferson City",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Montana",
#     capital: "Helena",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Nebraska",
#     capital: "Lincoln",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Nevada",
#     capital: "Carson City",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "New Hampshire",
#     capital: "Concord",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "New Jersey",
#     capital: "Trenton",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "New Mexico",
#     capital: "Santa Fe",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "New York",
#     capital: "Albany",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "North Carolina",
#     capital: "Raleigh",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "North Dakota",
#     capital: "Bismarck",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Ohio",
#     capital: "Columbus",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Oklahoma",
#     capital: "Oklahoma City",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Oregon",
#     capital: "Salem",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Pennsylvania",
#     capital: "Harrisburg",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Rhode Island",
#     capital: "Providence",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "South Carolina",
#     capital: "Columbia",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "South Dakota",
#     capital: "Pierre",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Tennessee",
#     capital: "Nashville",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Texas",
#     capital: "Austin",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Utah",
#     capital: "Salt Lake City",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Vermont",
#     capital: "Montpelier",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Virginia",
#     capital: "Richmond",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Washington",
#     capital: "Olympia",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "West Virginia",
#     capital: "Charleston",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Wisconsin",
#     capital: "Madison",
#     correct: 0,
#     wrong: 0
# }, {
#     name: "Wyoming",
#     capital: "Cheyenne",
#     correct: 0,
    # wrong: 0
}].shuffle

correct = 0
wrong = 0

puts "Welcome!  We're going to guess some capitals!"

states.each do |state|
  puts "What's the capital of #{state[:name]}?"
  answer = gets.chomp
  if answer == state[:capital]
    puts"correct"
    correct += 1

  else
    puts "wrong"
    wrong += 1

end
  puts "Correct: #{correct}"
  puts "Wrong: #{wrong}"
end
