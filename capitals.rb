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

states1 =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}]

puts "Welcome toooooooOOOOoOOO0o00000OOOOOoooooOoOOOOO00OOOOOooo00OOOOOooo00OOOOOooo........."
puts "NAME"
puts "THOSE"
puts "CAPS!!!!"
puts "******************"
puts "Contestant, What is your name???"
user = gets.chomp
puts "Well, #{user}, lets see if you can NAME THOSE CAPS....."
puts "******************"
puts "Here is our first question..."

states1.shuffle!

states1.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
end

totalCorrect = 0
totalWrong = 0

start_game = true

while start_game do
  states1.each do |state|
    puts "Name the capital of #{state[:name]} (type 'hint' for a hint)"
    capital = gets.chomp
    while capital == "hint"
      puts "#{state[:capital][0..2]}"
      capital = gets.chomp
    end
    if capital == state[:capital]
      puts "Correct!"
      state[:correct] += 1
      totalCorrect += 1
    else
      puts "Wrong!"
      state[:wrong] += 1
      totalWrong += 1
    end
    puts "You have answered #{state[:name]} accurately #{state[:correct]} out of #{state[:correct] + state[:wrong]} times"
    puts "Your Total Score is #{totalCorrect} out of #{totalCorrect + totalWrong}"
    puts "******************"
  end
  puts "Do you want to play again?"
  play_again = gets.chomp
  if play_again == "yes"
    start_game = true
    states1.shuffle!
    states1 = states1.sort_by { |i| i[:correct]}
  else start_game = false
    puts "Hope you enjoyed playing NAME THOSE CAPS!"
  end
end
