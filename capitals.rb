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

states.shuffle!

states.each do |state|
  state[:correct] = 0
  state[:incorrect] = 0
end

def play_game states
  puts "Welcome to the capital states game, where you guess the capitals!\n\n"
  states.length.times do |i|
    puts "What's the capital of #{states[i][:name]}? \n(Do you want a hint? Type in hint.)"
    answer = gets.chomp.downcase
    if answer == "hint"
      puts "The hint is #{states[i][:capital][0..2]}\n"
      answer = gets.chomp.downcase
    end
    if answer == states[i][:capital].downcase
      states[i][:correct] += 1
      puts "You got the answer correct! You are the greatest!"
      scoreboard states, i
    else
      states[i][:incorrect] += 1
      puts "You got the answer incorrect. The capital for #{states[i][:name]} is #{states[i][:capital]}."
      scoreboard states, i
    end
  end
  puts "Nice! You are done."
end

def scoreboard states, i
  correct = states.map{|state| state[:correct]}.reduce(:+)
  incorrect = states.map{|state| state[:incorrect]}.reduce(:+)
  puts "\n-------------------\nScoreboard\nCorrect: #{correct}/#{i+ 1}\nIncorrect: #{incorrect}/#{i+1}\n------------------\n"
end

def scorecard states
  puts "\n-------------------\nState by State Scorecard\n-------------------\n"
  states.each do |state|
    puts "State: #{state[:name]}     Correct: #{state[:correct]}     Incorrect: #{state[:incorrect]}"
  end
end

def sort_questions states
  states.sort_by { |state| state[:incorrect] }
end

def play_again
  puts "Do you want to play again? (Y or N)"
  answer = gets.chomp
  return answer
end

answer = "Y"
while answer == "Y"
  play_game states
  sort_questions states
  puts "Do you want a state by state scorecard?(Y or N)"
  answer = gets.chomp
  if answer == "Y"
    scorecard states
  end
  answer = play_again
end
