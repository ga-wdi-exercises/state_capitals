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

states.each do |state|
  state[:guesses] = {correct:0, incorrect:0}
end

puts "Hello! Guess the captial of all 50 states. Press Enter key to start playing"
gets.chomp

answer = ''
score = [0,0]
states.shuffle!
loop do
  states.each do |state|
    puts "What is the capital of #{state[:name]}? Type 'hint' if you need help."
    answer = gets.chomp
    if answer == "hint"
      puts state[:capital][0..2]
      puts "What is the capital of #{state[:name]}? Type 'hint' if you need help."
      answer = gets.chomp
    end
    if answer == state[:capital]
      score[0] += 1
      state[:guesses][:correct] += 1
      puts " "
      puts "CORRECT!"
      puts "-----------"
      puts "Scoreboard"
      puts "Total score: #{score[0]}, #{score[1]}"
      puts "For this state: #{state[:guesses][:correct]}, #{state[:guesses][:incorrect]}"
      puts "-----------"
    else
      score[1] += 1
      state[:guesses][:incorrect] += 1
      puts " "
      puts "INCORRECT!"
      puts "Correct answer was #{state[:capital]}."
      puts "-----------"
      puts "Scoreboard"
      puts "Total score: #{score[0]}, #{score[1]}"
      puts "For this state: #{state[:guesses][:correct]}, #{state[:guesses][:incorrect]}"
      puts "-----------"
    end
  end
  puts "Would you like to play again? Type 'no' if not. Else, press Enter."
  play = gets.chomp
  break if play == "no"
  states.sort_by! do |state|
    state[:guesses][:incorrect]
  end
  states.reverse!
end
