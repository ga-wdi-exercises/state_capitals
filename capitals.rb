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
},{
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]
# testStates = [
# {
#     name: "Alabama",
#     capital: "Montgomery"
# }, {
#     name: "Alaska",
#     capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }]
print "Welcome to the capitals game, please type the name of the state of the capital that is prompted, if stuck type hint\n"

score = 0
guesses = 0
game = "y"
# correct = []
# incorrect = []
states = states.shuffle

while game == "y"
  states.each do |states|
  states[:correct] = 0
  states[:incorrect] = 0
end
# print testStates
 states.each do |states|
  puts states[:name]
  guess = gets.chomp.upcase
  if guess == states[:capital].upcase
    states[:correct] += 1
    score += 1
    guesses += 1
    print "Right! You have gotten #{score} out of #{guesses} right\n"
  elsif guess == "HINT"
    puts states[:capital][0,3]
    print "enter capital name\n"
    guess = gets.chomp.upcase
    if guess == states[:capital].upcase
      states[:correct] += 1
      score += 1
      guesses += 1
      print "Right! You have gotten #{score} out of #{guesses} right\n"
    else
      states[:incorrect] +=1
      guesses += 1
      print "Wrong answer, you have gotten #{score} out of #{guesses} right\n"
    end
  else
    states[:incorrect] +=1
    guesses += 1
    print "Wrong answer, you have gotten #{score} out of #{guesses} right\n"
end
end
puts "you have gotten #{score} out of #{guesses} right. again? y/n\n"
game = gets.chomp
states = states.sort_by {|state| state[:correct]}
end
