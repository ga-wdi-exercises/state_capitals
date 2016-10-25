require "pry"

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
},{
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
},{
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
    capital: "Cheyenne"}
]


states.shuffle!

states.each do |state|
  state[:guesses] = {
    correct: 0,
    incorrect: 0
  }
end

# play game function
def play_game(states)
  states.each_with_index do |state, i|
    puts "\n*************\n Question ##{i + 1}\n*************\n"
    puts "What is the capital of #{state[:name]}? \n Type 'hint' if you need help!"
    answer = gets.chomp.downcase
    if answer == "hint"
      puts "First three letters are: #{state[:capital][0..2]}"
      answer = gets.chomp.downcase
    end

    if answer == state[:capital].downcase
      puts "Correct!"
      state[:guesses][:correct] += 1
      display_scoreboard(states)
      5.times do |i|
        puts "*" * i
        sleep (1.0/10.0)
      end
    else
      puts "Incorrect :("
      state[:guesses][:incorrect] += 1
      display_scoreboard(states)
      5.times do |i|
        puts "*" * i
        sleep (1.0/10.0)
      end
    end
    # binding.pry
  end
  play_again(states)
end

# play again function
def play_again(states)
  puts "Would you like to play again? (y/n) \n If you would like to see your answer scorecard, enter 's'"
  play_again = gets.chomp
  if play_again == "s"
    scorecard(states)
  elsif play_again == "y"
    10.times do |i|
      puts "*" * i
      sleep (1.0/10.0)
    end
    10.times do |i|
      puts "*" * (10 - i)
      sleep (1.0/10.0)
    end
    play_game(states)
  end
end

def sort_cards(states)
  states.sort_by {|state| state[:guesses][:incorrect]}
end

def display_scoreboard(states)
  puts "\n--- Scoreboard ---"
  correct = states.map {|state| state[:guesses][:correct]}.reduce(:+)
  incorrect = states.map {|state| state[:guesses][:incorrect]}.reduce(:+)
  total = states.map {|state| state[:guesses][:correct] + state[:guesses][:incorrect]}.reduce(:+)
  puts "Correct: #{correct}/#{total}"
  puts "Incorrect: #{incorrect}/#{total}"
end

def scorecard(states)
  10.times do |i|
    puts "*" * i
    sleep (1.0/10.0)
  end
  puts "***** Scorecard - Answers Per State *****"
  puts "------STATE------|| Correct || Incorrect"
  states.each do |state|
    spaces = 14 - state[:name].length
    puts "#{state[:name]}#{" " * spaces}   ||    #{state[:guesses][:correct]}    ||    #{state[:guesses][:incorrect]} "
  end
end
#     ********** GAME STARTS HERE **********

puts "--------- \n Welcome to the 'Guess a State Capital' game!!! \n Are you ready to play? (y/n) \n--------- "

play = gets.chomp

if play == 'y'
  sort_cards(states)
  play_game(states)
end
