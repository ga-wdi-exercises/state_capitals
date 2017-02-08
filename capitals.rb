
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


puts "Welcome to States and Capitals Trivia"
puts "Type 'yes' to begin game"

start = gets.chomp.to_s
puts "Trivia Game Begins..."

new_game = 0
user_input = 0
# Counter for Correct/Wrong Answers and # of attempts!
while new_game == 0
for counter in states.shuffle do
  counter[:correct] = 0
  counter[:incorrect] = 0
  counter[:attempts] = 0
end

# Trivia Game
for state in states.shuffle do
  puts "What is the capital of this state: #{state[:name]}?"
  user_input = gets.chomp.to_s
  if user_input == state[:capital].downcase
    puts "Correct Answer: #{state[:capital]}"
    counter[:correct] += 1
    counter[:attempts] += 1
  else user_input != state[:capital].downcase
    puts "Wrong Answer, Retry"
    counter[:incorrect] += 1
    counter[:attempts] += 1
    # puts "Hint: - - - - - #{state[:capitol]}"
  end
    puts "Correct Answers: #{counter[:correct]}"
    puts "Incorrect Answers: #{counter[:incorrect]}"
    puts "Attempts: #{counter[:attempts]}"

  end

  puts "Read above to correct/incorrect and number of attempts. Play Again? Type 'yes' or 'no'?"
  retry_game = gets.chomp.to_s

  if retry_game == 'yes'
  puts "Trivia has restarted, Good Luck sir!"
  else
  puts "Well..Movin on...GAME OVER"
  new_game += 1
  end
end
