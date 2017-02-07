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

states.map! {|state| state[:correct] = 0; state[:wrong] = 0; state}

def capital_game (states)
index = 0
totalCorrect = 0;
totalRight = 0;
totalWrong = 0;
states.shuffle!
puts "Hello! Welcome to the U.S. capitals game. Rules of the game: you must correctly identify the capital of the given state. Good luck!"
while index <= states.length + 1
  currentState = states[index]
  currentState[:shown] = "yes"
  puts ("What's the capital of #{currentState[:name]}?")
  user_input = gets.chomp
  if user_input == currentState[:capital]
    currentState[:correct] += 1
    currentStateTotal = currentState[:correct] + currentState[:wrong]
    index +=1
    totalCorrect +=1
    puts "Correct! You have answered #{currentState[:name]}'s capital correctly #{currentState[:correct]} times out of #{currentStateTotal} times total. ou have answered #{totalWrong} questions wrong and #{totalRight} questions right."
  else
    currentState[:wrong] += 1
    currentStateTotal = currentState[:correct] + currentState[:wrong]
    index +=1
    totalWrong +=1
    puts "Wrong! You have answered #{currentState[:name]}'s capital correctly #{currentState[:correct]} times out of #{currentStateTotal} times total. You have answered #{totalWrong} questions wrong and #{totalRight} questions right."
  end
  if index == states.length
    puts "Would you like to play again?"
    user_input = gets.chomp.downcase
    if user_input == "yes"
      index = 0
      states.shuffle!
      states = states.sort_by{|state| [:correct]}
    else
      index = 51
      break
    end
  end
end
puts "See you later!"
end
