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


}, {
    name: "Hawaii",
    capital: "Honolulu",

}, {
    name: "Idaho",
    capital: "Boise",

}, {
    name: "Illinois",
    capital: "Springfield",

}, {
    name: "Indiana",
    capital: "Indianapolis",

}, {
    name: "Iowa",
    capital: "Des Moines",

}, {
    name: "Kansas",
    capital: "Topeka",

}, {
    name: "Kentucky",
    capital: "Frankfort",

}, {
    name: "Louisiana",
    capital: "Baton Rouge",

}, {
    name: "Maine",
    capital: "Augusta",

}, {
    name: "Maryland",
    capital: "Annapolis",

}, {
    name: "Massachusetts",
    capital: "Boston",

}, {
    name: "Michigan",
    capital: "Lansing",

}, {
    name: "Minnesota",
    capital: "St. Paul",

}, {
    name: "Mississippi",
    capital: "Jackson",

}, {
    name: "Missouri",
    capital: "Jefferson City",

}, {
    name: "Montana",
    capital: "Helena",

}, {
    name: "Nebraska",
    capital: "Lincoln",

}, {
    name: "Nevada",
    capital: "Carson City",

}, {
    name: "New Hampshire",
    capital: "Concord",

}, {
    name: "New Jersey",
    capital: "Trenton",

}, {
    name: "New Mexico",
    capital: "Santa Fe",

}, {
    name: "New York",
    capital: "Albany",

}, {
    name: "North Carolina",
    capital: "Raleigh",

}, {
    name: "North Dakota",
    capital: "Bismarck",

}, {
    name: "Ohio",
    capital: "Columbus",

}, {
    name: "Oklahoma",
    capital: "Oklahoma City",

}, {
    name: "Oregon",
    capital: "Salem",

}, {
    name: "Pennsylvania",
    capital: "Harrisburg",

}, {
    name: "Rhode Island",
    capital: "Providence",

}, {
    name: "South Carolina",
    capital: "Columbia",

}, {
    name: "South Dakota",
    capital: "Pierre",

}, {
    name: "Tennessee",
    capital: "Nashville",

}, {
    name: "Texas",
    capital: "Austin",

}, {
    name: "Utah",
    capital: "Salt Lake City",

}, {
    name: "Vermont",
    capital: "Montpelier",

}, {
    name: "Virginia",
    capital: "Richmond",

}, {
    name: "Washington",
    capital: "Olympia",

}, {
    name: "West Virginia",
    capital: "Charleston",

}, {
    name: "Wisconsin",
    capital: "Madison",

}, {
    name: "Wyoming",
    capital: "Cheyenne",

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
puts "Congratulations!  You got #{correct} right, and #{wrong} wrong!  Play again(Y/N)?"
input = gets.chomp
if input == "Y"
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
else
  puts "That's fair.  Have a nice day!"
end
